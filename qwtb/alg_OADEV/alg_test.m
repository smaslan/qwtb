function alg_test(calcset) %<<<1
% Part of QWTB. Test script for algorithm ODEV.
%
% See also qwtb

% Generate sample data --------------------------- %<<<1
% following data are according:
% THE CALCULATION OF TIME DOMAIN FREQUENCY STABILITY, W.J. Riley, Hamilton Technical Services, Revised on: 07/03/02  
% accessible here: http://www.wriley.com/paper1ht.htm
% data are originally from: B.E. Blair (Editor), Time and Frequency: Theory and Fundamentals, NBS Monograph 140, Annex 8.E, p. 181, May 1974.
DI = [];
DI.y.v = [...
    8.920000000000000e+02, ...
    8.090000000000000e+02, ...
    8.230000000000000e+02, ...
    7.980000000000000e+02, ...
    6.710000000000000e+02, ...
    6.440000000000000e+02, ...
    8.830000000000000e+02, ...
    9.030000000000000e+02, ...
    6.770000000000000e+02, ...
    ];
DI.fs.v = 1;
DI.tau.v = [];

% Call algorithm --------------------------- %<<<1
DO = qwtb('OADEV', DI);

% Check results --------------------------- %<<<1

% check tau values:
assert(all(DO.tau.v == [1 2 3 4]));

% check oadev values:
% reference values according literature mentioned above for averaging factors 1 and 2:
reference = [91.22945    85.95287];
limit =     [ 0.000005    0.000005];
for i = [1:2]
    assert((DO.oadev.v(i) > reference(i) - limit(i)) & (DO.oadev.v(i) < reference(i) + limit(i)));
end % for

% Generate sample data --------------------------- %<<<1
% following data are according:
% THE CALCULATION OF TIME DOMAIN FREQUENCY STABILITY, W.J. Riley, Hamilton Technical Services, Revised on: 07/03/02  
% accessible here: http://www.wriley.com/paper1ht.htm

DI = [];
DI.y.v = [...
    5.748904731939040e-01, ...
    1.841829699390490e-01, ...
    5.631757655940840e-01, ...
    2.950923397648580e-01, ...
    6.169544279654300e-01, ...
    1.530708149788300e-01, ...
    6.611873491952140e-01, ...
    5.757779239564100e-01, ...
    9.956793538274600e-02, ...
    4.382899778142060e-01, ...
    3.396571233587610e-01, ...
    6.172722906886010e-01, ...
    4.953896033090490e-01, ...
    1.306281518799400e-02, ...
    5.467348646124520e-01, ...
    9.728695414834050e-01, ...
    1.838371158502200e-02, ...
    9.750406094710530e-01, ...
    5.075233799906090e-01, ...
    9.454475021667070e-01, ...
    1.361689158418070e-01, ...
    5.909685532520380e-01, ...
    4.084745070005180e-01, ...
    2.310391577105220e-01, ...
    7.512364074360700e-02, ...
    6.030299778110489e-01, ...
    1.248370702959770e-01, ...
    1.366404644849900e-01, ...
    5.162865992245670e-01, ...
    2.288731672935530e-01, ...
    6.713227027427980e-01, ...
    9.206649982000999e-01, ...
    6.166247490870880e-01, ...
    6.121579066906860e-01, ...
    5.379377503590370e-01, ...
    1.197702843322280e-01, ...
    9.791687717564260e-01, ...
    8.895469102494170e-01, ...
    6.149205619538770e-01, ...
    9.698847588011460e-01, ...
    8.531411708580060e-01, ...
    7.436586105002360e-01, ...
    6.702666774719330e-01, ...
    1.720482707824780e-01, ...
    6.152870411124490e-01, ...
    1.292999769231770e-01, ...
    1.447121478359740e-01, ...
    1.770686792102960e-01, ...
    9.932914874485190e-01, ...
    2.500295472564310e-01, ...
    2.466007388413890e-01, ...
    6.186177072201940e-01, ...
    1.078052497970900e-01, ...
    8.828333396850310e-01, ...
    7.799400863144270e-01, ...
    4.530306865708110e-01, ...
    8.674919562728600e-02, ...
    9.937309077911690e-01, ...
    6.353672461748900e-01, ...
    6.173064613795400e-01, ...
    6.969640593496000e-02, ...
    3.874945488700150e-01, ...
    6.208828583456960e-01, ...
    1.782002161155460e-01, ...
    1.103225397459800e-02, ...
    4.190925510689120e-01, ...
    6.885058151970180e-01, ...
    7.172360162796620e-01, ...
    5.857256122798310e-01, ...
    2.903655871238400e-01, ...
    1.744227903775980e-01, ...
    5.238378762844200e-01, ...
    1.431867122385590e-01, ...
    5.390725934594280e-01, ...
    1.930782726002290e-01, ...
    6.652759204922599e-02, ...
    1.292395713409590e-01, ...
    1.294755275032830e-01, ...
    9.519074768535400e-02, ...
    8.708963477382889e-01, ...
    1.549164374149020e-01, ...
    6.805636322500950e-01, ...
    2.329672273401950e-01, ...
    4.801899066568310e-01, ...
    5.517611813506860e-01, ...
    4.501749609830670e-01, ...
    9.056924241155800e-02, ...
    1.972572110580550e-01, ...
    3.019462527250620e-01, ...
    8.106695501183480e-01, ...
    9.231288390807481e-01, ...
    2.639843012504200e-02, ...
    6.784151115819880e-01, ...
    1.227803584759960e-01, ...
    5.694849060706260e-01, ...
    3.328163290083480e-01, ...
    6.440416433122200e-01, ...
    4.078991484865080e-01, ...
    5.609886127342421e-01, ...
    5.356142244001920e-01, ...
    6.826949402143700e-02, ...
    4.053860182898990e-01, ...
    3.228093983246060e-01, ...
    4.575576416484810e-01, ...
    1.712831860274460e-01, ...
    7.565075632913540e-01, ...
    6.226162377850230e-01, ...
    3.111084528784770e-01, ...
    7.997675285673550e-01, ...
    6.928526315339160e-01, ...
    7.741781905173220e-01, ...
    6.128480246350390e-01, ...
    1.367500411052020e-01, ...
    3.579408551370450e-01, ...
    9.119522883146780e-01, ...
    1.821097047916190e-01, ...
    7.178084327456580e-01, ...
    2.063291562750610e-01, ...
    7.741295149429370e-01, ...
    7.947576459472800e-01, ...
    4.917554359379020e-01, ...
    9.336118083138070e-01, ...
    2.136623301606920e-01, ...
    2.278301074299200e-02, ...
    9.140615574615359e-01, ...
    6.325962560403140e-01, ...
    4.527526956297200e-02, ...
    9.414555448766130e-01, ...
    4.334274122647100e-02, ...
    4.614517933043890e-01, ...
    6.202900668700650e-01, ...
    2.151538851741490e-01, ...
    9.134812191657200e-02, ...
    2.878850518203740e-01, ...
    4.840659450199760e-01, ...
    6.963379507401670e-01, ...
    3.519380899853720e-01, ...
    2.347838414063600e-02, ...
    6.012022516695790e-01, ...
    4.062438106193410e-01, ...
    7.397250792662260e-01, ...
    5.594072274674700e-01, ...
    9.572720457600770e-01, ...
    8.712730896059760e-01, ...
    4.868170076454140e-01, ...
    9.334474964688750e-01, ...
    4.520731523875490e-01, ...
    9.934721775322560e-01, ...
    2.868877846220920e-01, ...
    7.229961434951970e-01, ...
    3.961837237683050e-01, ...
    6.598453739005350e-01, ...
    2.119914629552500e-02, ...
    2.940517888842390e-01, ...
    1.284157774077800e-01, ...
    2.839708925615860e-01, ...
    6.987912825768769e-01, ...
    5.850862695766080e-01, ...
    5.449327740561840e-01, ...
    6.851335622766680e-01, ...
    3.978118395422600e-02, ...
    6.023587186831790e-01, ...
    8.429849081872890e-01, ...
    4.735190376981700e-02, ...
    8.434466593169830e-01, ...
    8.080031405240310e-01, ...
    1.087827873922800e-01, ...
    3.123077020572070e-01, ...
    9.555484754757720e-01, ...
    9.032273212928450e-01, ...
    5.415889688495500e-01, ...
    4.857994543788020e-01, ...
    8.314297445264780e-01, ...
    8.397162565215101e-01, ...
    1.111233570199100e-01, ...
    6.502614336322350e-01, ...
    9.439150569699311e-01, ...
    3.803624936288050e-01, ...
    7.524304193223040e-01, ...
    9.805754995814400e-02, ...
    5.324214652797300e-02, ...
    8.407566956434200e-01, ...
    5.977836789552980e-01, ...
    9.502922016895810e-01, ...
    5.610337967802930e-01, ...
    2.950224863807780e-01, ...
    4.429286017282530e-01, ...
    3.010092467539990e-01, ...
    6.241019445583700e-02, ...
    9.281382192522930e-01, ...
    2.190509732901360e-01, ...
    5.897080873091280e-01, ...
    2.238234045094920e-01, ...
    7.999595910310560e-01, ...
    9.208464589532680e-01, ...
    6.664356275770980e-01, ...
    7.835926882846250e-01, ...
    8.423119996871390e-01, ...
    7.377787417442440e-01, ...
    8.473124955069800e-01, ...
    7.811119858087560e-01, ...
    1.491454877653840e-01, ...
    6.882128728033100e-01, ...
    7.937532052368640e-01, ...
    6.101204159716710e-01, ...
    2.938312358659840e-01, ...
    4.215811995889900e-01, ...
    5.152214921616119e-01, ...
    3.276187602093530e-01, ...
    2.885028385969360e-01, ...
    8.672082986995620e-01, ...
    1.698762435325780e-01, ...
    1.100250520324450e-01, ...
    1.910495093050640e-01, ...
    9.691028902163280e-01, ...
    7.122758658194340e-01, ...
    2.204768272212130e-01, ...
    5.540351069318300e-01, ...
    6.680422032568800e-01, ...
    7.853101383826280e-01, ...
    7.074957968236389e-01, ...
    8.818572149061860e-01, ...
    3.742109282753480e-01, ...
    3.630715237758460e-01, ...
    1.431001006360630e-01, ...
    8.339139031404200e-02, ...
    5.590970081086720e-01, ...
    7.434152824540690e-01, ...
    5.806522055438960e-01, ...
    2.161857626476300e-02, ...
    3.434112818648160e-01, ...
    7.134143019623190e-01, ...
    3.541730806949420e-01, ...
    5.869672398953550e-01, ...
    1.584009212248030e-01, ...
    2.442830252667340e-01, ...
    6.648056580055530e-01, ...
    3.886940993315980e-01, ...
    7.817274661649610e-01, ...
    4.935238345030340e-01, ...
    6.550864924933230e-01, ...
    3.867933528436300e-02, ...
    8.358812429178000e-02, ...
    8.656049719385830e-01, ...
    2.227633717575870e-01, ...
    9.839891297668170e-01, ...
    9.053039908899480e-01, ...
    4.441748873536360e-01, ...
    2.473317525569960e-01, ...
    9.047652254368950e-01, ...
    3.891439178907980e-01, ...
    3.418279906463940e-01, ...
    1.030387939433750e-01, ...
    7.730098063000520e-01, ...
    9.758144849798710e-01, ...
    5.140490566911400e-01, ...
    6.224958079971820e-01, ...
    2.870450086365660e-01, ...
    3.654601547706220e-01, ...
    2.888212298456680e-01, ...
    2.184100161392290e-01, ...
    8.171412520190430e-01, ...
    6.930226840512000e-01, ...
    6.322508485206640e-01, ...
    2.400110867992100e-01, ...
    8.663358343142720e-01, ...
    5.063673199649750e-01, ...
    5.155466513314970e-01, ...
    7.925689284655120e-01, ...
    7.059807198615660e-01, ...
    4.179587133312410e-01, ...
    6.320949581601170e-01, ...
    6.199617970827790e-01, ...
    6.979235702650270e-01, ...
    1.445444301444000e-03, ...
    2.935823743667370e-01, ...
    2.389659817511990e-01, ...
    3.012552923994400e-01, ...
    1.976993573818820e-01, ...
    7.330995172881980e-01, ...
    2.035870627516820e-01, ...
    6.877636675200260e-01, ...
    2.439600090700950e-01, ...
    2.358724410812710e-01, ...
    3.081172529180150e-01, ...
    5.266697930761940e-01, ...
    7.392122315891140e-01, ...
    9.399763182457430e-01, ...
    1.819807561961840e-01, ...
    5.505693892718150e-01, ...
    4.197254913950920e-01, ...
    3.263338773168320e-01, ...
    6.934760639879280e-01, ...
    2.522074450981840e-01, ...
    8.505297651749710e-01, ...
    8.537632957351220e-01, ...
    1.997114202006310e-01, ...
    5.498393120010570e-01, ...
    1.493168017590960e-01, ...
    5.674871651304360e-01, ...
    7.567843472383839e-01, ...
    2.745240355257520e-01, ...
    9.254650813180330e-01, ...
    2.916217121722280e-01, ...
    2.861164786322590e-01, ...
    7.596563723681760e-01, ...
    5.446503919291540e-01, ...
    9.391371532991240e-01, ...
    7.813549837010700e-02, ...
    2.233211063888490e-01, ...
    3.578350773816160e-01, ...
    1.341455528205940e-01, ...
    5.843062557206981e-01, ...
    4.352398977779040e-01, ...
    7.696195322878800e-02, ...
    4.995479162314660e-01, ...
    9.018281022560910e-01, ...
    2.491461812747400e-02, ...
    7.399868684541370e-01, ...
    9.592981086854350e-01, ...
    9.233126761034660e-01, ...
    1.161472709459010e-01, ...
    8.718278775326101e-02, ...
    2.811137690586570e-01, ...
    6.791165688443540e-01, ...
    9.121725670584350e-01, ...
    8.843345511166070e-01, ...
    1.080061682071600e-02, ...
    5.259669057680140e-01, ...
    9.257852430109800e-01, ...
    6.725792855362310e-01, ...
    4.005200743677700e-02, ...
    1.540889899032600e-01, ...
    7.736533040989440e-01, ...
    7.910819909493820e-01, ...
    7.150218862644500e-01, ...
    3.728424466088610e-01, ...
    3.630001551299360e-01, ...
    9.436072688287160e-01, ...
    2.073672042262590e-01, ...
    2.206014307311740e-01, ...
    6.482462988459720e-01, ...
    7.554470425264199e-02, ...
    6.798443741536910e-01, ...
    1.443964010776940e-01, ...
    8.703129127949070e-01, ...
    3.491253440031430e-01, ...
    7.496566608313741e-01, ...
    4.794985928942910e-01, ...
    9.328507743463160e-01, ...
    4.229644385273400e-01, ...
    7.633183290079790e-01, ...
    9.115563709808300e-02, ...
    5.279270748272200e-02, ...
    2.870346621084190e-01, ...
    1.915660561954440e-01, ...
    6.507064768349320e-01, ...
    4.237561646959540e-01, ...
    6.986004489933099e-02, ...
    1.377746230632880e-01, ...
    5.780898246812120e-01, ...
    9.556834171319770e-01, ...
    1.711917371354960e-01, ...
    2.195260362790550e-01, ...
    5.740917420825420e-01, ...
    7.599091812781570e-01, ...
    7.936097419790969e-01, ...
    1.989334426815310e-01, ...
    4.743711484942450e-01, ...
    7.558927427771930e-01, ...
    2.893278562879790e-01, ...
    7.332806320550300e-01, ...
    2.475829488819390e-01, ...
    1.266218587414460e-01, ...
    1.335798674885090e-01, ...
    7.683287937046600e-02, ...
    3.302035794268380e-01, ...
    7.315594268644040e-01, ...
    3.192873100374300e-01, ...
    2.618197990869260e-01, ...
    4.053632539721970e-01, ...
    9.402095107083250e-01, ...
    1.012464748235640e-01, ...
    6.495023596331020e-01, ...
    1.861583535495020e-01, ...
    7.634481064805050e-01, ...
    2.723256178537040e-01, ...
    9.766592671986010e-01, ...
    7.123038068936690e-01, ...
    6.900824618945280e-01, ...
    2.159370613358620e-01, ...
    2.541898718356110e-01, ...
    1.691759411102050e-01, ...
    3.400422392133820e-01, ...
    8.991445931136401e-02, ...
    1.923176460863640e-01, ...
    2.826777735178720e-01, ...
    9.653395148764080e-01, ...
    4.612265277939040e-01, ...
    8.342526321458880e-01, ...
    2.839884759318030e-01, ...
    9.943149858127880e-01, ...
    4.519665555339150e-01, ...
    2.018988585108420e-01, ...
    3.141149917217510e-01, ...
    3.306658674639960e-01, ...
    5.012344673747360e-01, ...
    2.476931671834050e-01, ...
    9.790608514934130e-01, ...
    7.573104979271600e-02, ...
    8.117538661750749e-01, ...
    1.472288044855130e-01, ...
    4.745169880215620e-01, ...
    2.070176783981820e-01, ...
    3.461208382370510e-01, ...
    2.529282501213850e-01, ...
    9.650997901172840e-01, ...
    4.321725011953030e-01, ...
    5.232275894485540e-01, ...
    8.860958618512820e-01, ...
    6.131501345025140e-01, ...
    2.143105837583130e-01, ...
    9.179812259590170e-01, ...
    5.104646931916780e-01, ...
    3.800984725263430e-01, ...
    3.150277502439110e-01, ...
    6.713983494189560e-01, ...
    1.920586843937910e-01, ...
    9.303086064431390e-01, ...
    6.967484898384420e-01, ...
    2.518687146957350e-01, ...
    1.574878912221120e-01, ...
    8.989877700335290e-01, ...
    2.874509535205790e-01, ...
    1.881758203674930e-01, ...
    6.710129164489980e-01, ...
    7.140867583053589e-01, ...
    6.561468381696129e-01, ...
    8.599091166909359e-01, ...
    4.925242245628150e-01, ...
    8.546422272243730e-01, ...
    9.719129600431360e-01, ...
    9.411194449947770e-01, ...
    3.945120272201080e-01, ...
    5.636414883488980e-01, ...
    1.224946799327130e-01, ...
    7.680856291056080e-01, ...
    2.151683779504000e-01, ...
    3.349282123776750e-01, ...
    1.384654315833310e-01, ...
    1.885086210391060e-01, ...
    2.643938042523310e-01, ...
    6.666680689280240e-01, ...
    6.902344732965500e-01, ...
    7.707926951212780e-01, ...
    7.128269033100580e-01, ...
    4.817639321469530e-01, ...
    6.407593845580000e-03, ...
    6.924297626560690e-01, ...
    6.670209605558870e-01, ...
    6.212840627978020e-01, ...
    9.212434426514630e-01, ...
    3.385406431455820e-01, ...
    8.525893477967890e-01, ...
    4.691684206338450e-01, ...
    3.136455930367320e-01, ...
    4.414821683622350e-01, ...
    9.908036640802420e-01, ...
    4.371821966195400e-01, ...
    7.211785846022790e-01, ...
    8.484714105019679e-01, ...
    2.589963065735050e-01, ...
    9.509245808939100e-01, ...
    1.894310839424990e-01, ...
    7.682278215737210e-01, ...
    6.049971895315670e-01, ...
    1.877644570487390e-01, ...
    7.572296181494510e-01, ...
    7.581922378196350e-01, ...
    9.369410345968520e-01, ...
    1.679684692844600e-01, ...
    4.606326392202800e-02, ...
    1.852767375229280e-01, ...
    9.461275478574110e-01, ...
    5.656968395065970e-01, ...
    6.667815873710350e-01, ...
    5.981389449900660e-01, ...
    9.212484480446430e-01, ...
    4.226662863151480e-01, ...
    7.522740986907270e-01, ...
    4.707766950460040e-01, ...
    3.439136381931200e-01, ...
    1.565171117691870e-01, ...
    5.830975047233971e-01, ...
    1.197618861309080e-01, ...
    8.380202021626850e-01, ...
    6.055377482462380e-01, ...
    2.729347745296240e-01, ...
    2.147555193932520e-01, ...
    3.960144423861120e-01, ...
    8.147331833908020e-01, ...
    2.206132492146520e-01, ...
    8.468795506501940e-01, ...
    5.046077778118701e-01, ...
    9.429216840969969e-01, ...
    6.847446182206020e-01, ...
    5.027984336497250e-01, ...
    5.332743509361870e-01, ...
    7.420161844892500e-01, ...
    6.601271082927100e-02, ...
    4.756309075633210e-01, ...
    9.286634167324120e-01, ...
    4.604502164108900e-02, ...
    8.786787217849300e-01, ...
    9.532770393198720e-01, ...
    7.271998490799220e-01, ...
    4.786348624521100e-02, ...
    4.416133232608500e-01, ...
    1.951240451052430e-01, ...
    4.498260838211640e-01, ...
    2.269907822958150e-01, ...
    3.407804576404300e-02, ...
    7.497151562709899e-01, ...
    4.626314465248170e-01, ...
    4.467217426033330e-01, ...
    5.232793421127300e-02, ...
    4.755902888605330e-01, ...
    2.459848789712340e-01, ...
    2.678608695361120e-01, ...
    9.376342934265890e-01, ...
    8.195696206854520e-01, ...
    5.066148603831490e-01, ...
    6.759584595802980e-01, ...
    8.338301660650550e-01, ...
    1.836010553797710e-01, ...
    7.829377678143500e-01, ...
    8.350636557839179e-01, ...
    9.148627603030129e-01, ...
    9.841241273023800e-02, ...
    1.742075710437300e-02, ...
    7.906646531963090e-01, ...
    7.008262703664720e-01, ...
    7.871260493002490e-01, ...
    2.275105892808690e-01, ...
    7.704740435678860e-01, ...
    3.572502454543720e-01, ...
    3.048753516305590e-01, ...
    4.003485480325100e-02, ...
    8.658046782323180e-01, ...
    5.792270505704110e-01, ...
    6.903893690045899e-02, ...
    3.374124860099580e-01, ...
    8.916523693556210e-01, ...
    1.371759921951000e-03, ...
    5.516900823226600e-02, ...
    2.255213596976930e-01, ...
    3.374924391217030e-01, ...
    2.354243184604800e-01, ...
    7.765203652794100e-01, ...
    9.777792510473070e-01, ...
    5.358723520933990e-01, ...
    4.066216337525390e-01, ...
    8.979847891712500e-02, ...
    2.430351601182650e-01, ...
    6.919361076745840e-01, ...
    3.701616867306460e-01, ...
    3.074688819737490e-01, ...
    6.294993328067940e-01, ...
    9.952864837810800e-01, ...
    7.799329086113410e-01, ...
    3.323950308060250e-01, ...
    5.632827568628280e-01, ...
    9.329459354900500e-02, ...
    2.233778127578000e-03, ...
    5.431089902031740e-01, ...
    3.279834475032900e-02, ...
    2.417802187808700e-01, ...
    6.001370500773830e-01, ...
    5.034006505754780e-01, ...
    6.547342220576170e-01, ...
    1.180701223751860e-01, ...
    4.045467597453610e-01, ...
    2.173910402773840e-01, ...
    6.912139419891010e-01, ...
    2.327230108122910e-01, ...
    3.756427221818100e-01, ...
    4.272317096717800e-01, ...
    4.833444536120370e-01, ...
    5.702318575094600e-01, ...
    8.868291614981501e-01, ...
    9.377172994137360e-01, ...
    2.146512466551040e-01, ...
    6.435025323384920e-01, ...
    3.470610130331760e-01, ...
    5.444604859428800e-02, ...
    7.473872419201701e-02, ...
    1.337374952313200e-01, ...
    7.260823527938139e-01, ...
    2.661034056293330e-01, ...
    3.999384121969060e-01, ...
    7.648937933914800e-01, ...
    5.699855306046020e-01, ...
    7.468128715394130e-01, ...
    6.839319629054200e-01, ...
    8.445005513934890e-01, ...
    5.207672703642250e-01, ...
    5.355130115223640e-01, ...
    3.671846563775020e-01, ...
    2.725197366776500e-01, ...
    2.392143412675780e-01, ...
    4.754336841755700e-01, ...
    6.139299388108450e-01, ...
    3.204815938698510e-01, ...
    3.341481705820880e-01, ...
    2.830297314948500e-02, ...
    6.880697234012511e-01, ...
    3.878412048275770e-01, ...
    4.471295370939790e-01, ...
    9.061299385065820e-01, ...
    3.258764801201770e-01, ...
    6.001379809343000e-03, ...
    8.651904556272511e-01, ...
    2.559877272024690e-01, ...
    3.857310919024660e-01, ...
    9.824616047472050e-01, ...
    2.321909862720370e-01, ...
    4.339062741184170e-01, ...
    6.627491082357010e-01, ...
    8.242621174195141e-01, ...
    3.734074697705950e-01, ...
    8.593444343932650e-01, ...
    1.908847597385000e-03, ...
    8.200156925339300e-02, ...
    2.003744417803240e-01, ...
    6.932430019105050e-01, ...
    3.351331098634440e-01, ...
    5.821774749002310e-01, ...
    6.568206481900160e-01, ...
    1.846341296027570e-01, ...
    1.458162335426620e-01, ...
    7.334371515239760e-01, ...
    8.782056634678530e-01, ...
    2.585904208285000e-03, ...
    4.612920286419300e-01, ...
    9.351253849152130e-01, ...
    6.523442699817680e-01, ...
    9.501455835765910e-01, ...
    9.682317175754500e-02, ...
    3.070477290577480e-01, ...
    5.511822735663420e-01, ...
    7.204718295114450e-01, ...
    9.700385988550440e-01, ...
    4.387309567251850e-01, ...
    7.511896801885170e-01, ...
    2.449549284041650e-01, ...
    9.574816888000270e-01, ...
    3.947436620456840e-01, ...
    4.567280018034990e-01, ...
    2.275263114029200e-01, ...
    3.471574887387300e-02, ...
    4.675913231762090e-01, ...
    8.073686225374080e-01, ...
    4.444389862215330e-01, ...
    6.860414253017130e-01, ...
    2.982350458848450e-01, ...
    4.364161865955290e-01, ...
    8.468481110627060e-01, ...
    9.762026308924900e-01, ...
    3.761741008498600e-02, ...
    2.358112983572350e-01, ...
    2.804914900476540e-01, ...
    2.204732309190900e-01, ...
    4.935920571412850e-01, ...
    8.017043735839910e-01, ...
    2.454068261410140e-01, ...
    5.525269520247950e-01, ...
    3.204826807232960e-01, ...
    3.524149164335870e-01, ...
    3.750049929949500e-02, ...
    2.708917266088030e-01, ...
    8.772491141582140e-01, ...
    9.258616570969400e-01, ...
    9.568708282694550e-01, ...
    1.280107247307950e-01, ...
    4.762505504657750e-01, ...
    3.430016782800680e-01, ...
    8.292068530941410e-01, ...
    4.795799532344470e-01, ...
    3.002740113531580e-01, ...
    7.053088125331840e-01, ...
    1.252122452134320e-01, ...
    4.422053021575350e-01, ...
    1.445133616889420e-01, ...
    8.360699060540970e-01, ...
    8.269110512113720e-01, ...
    8.940377095220789e-01, ...
    9.178393757519500e-02, ...
    6.126388263016190e-01, ...
    6.207536513082470e-01, ...
    6.617537702721000e-03, ...
    2.209561696373650e-01, ...
    6.103430951993650e-01, ...
    3.640101572331100e-02, ...
    7.918712616860270e-01, ...
    9.802951570508510e-01, ...
    8.207045536584709e-01, ...
    5.814333379182191e-01, ...
    1.501103915041830e-01, ...
    9.053500107980100e-01, ...
    2.176314821548910e-01, ...
    7.323205772472180e-01, ...
    1.119417939856380e-01, ...
    4.057315166135000e-01, ...
    1.295997230939570e-01, ...
    1.825460401282390e-01, ...
    5.129643532042200e-02, ...
    1.391884303368570e-01, ...
    3.399486715625730e-01, ...
    5.173229521686780e-01, ...
    6.468570989774810e-01, ...
    7.272625145163680e-01, ...
    1.010814765938940e-01, ...
    8.763771135715660e-01, ...
    2.701477973117250e-01, ...
    3.740294181620840e-01, ...
    3.124310501443370e-01, ...
    2.865977586650300e-02, ...
    6.848529883124180e-01, ...
    3.241745668110320e-01, ...
    4.019443930135780e-01, ...
    4.794133792069800e-01, ...
    5.006643317177260e-01, ...
    6.654231798208430e-01, ...
    7.673832489025700e-01, ...
    4.102643054957800e-01, ...
    3.121824675762010e-01, ...
    8.507325532151070e-01, ...
    2.620218863068250e-01, ...
    8.018431588084640e-01, ...
    5.779700938509640e-01, ...
    9.433673531484640e-01, ...
    1.751043662312930e-01, ...
    9.790832493356820e-01, ...
    4.521715848018280e-01, ...
    6.478257643281600e-01, ...
    7.621063388708000e-03, ...
    8.721237400882501e-02, ...
    7.783699663255220e-01, ...
    6.402403305472100e-02, ...
    5.192355068955700e-02, ...
    6.791164393905160e-01, ...
    9.099968364043149e-01, ...
    3.168294473163920e-01, ...
    9.525210466014790e-01, ...
    2.123023104911200e-02, ...
    8.164932424279360e-01, ...
    8.019254863271140e-01, ...
    9.616486998096340e-01, ...
    4.296977005105920e-01, ...
    9.292524815207590e-01, ...
    9.464569193993030e-01, ...
    1.014443440835200e-01, ...
    9.750910117174920e-01, ...
    3.546339358923180e-01, ...
    3.325605421944340e-01, ...
    3.450326618482510e-01, ...
    9.639476835559810e-01, ...
    6.871752537261600e-02, ...
    9.354489375536560e-01, ...
    9.029346429290901e-02, ...
    5.622543709176850e-01, ...
    8.092120135245900e-01, ...
    4.263113077852460e-01, ...
    1.414994663286500e-02, ...
    8.181530585597050e-01, ...
    6.984552129630260e-01, ...
    9.367642695721070e-01, ...
    1.970786984064980e-01, ...
    3.016841180164760e-01, ...
    4.049715029098890e-01, ...
    3.560494065080070e-01, ...
    1.223751800704630e-01, ...
    7.596514442747700e-01, ...
    4.618239260566530e-01, ...
    8.747252341707820e-01, ...
    5.070107083334640e-01, ...
    3.289749605250430e-01, ...
    8.216154439475500e-02, ...
    8.890766426404360e-01, ...
    7.111328578140270e-01, ...
    9.941280358444000e-03, ...
    8.309898436213800e-02, ...
    6.446301744527320e-01, ...
    2.993420270734200e-01, ...
    4.144902296431800e-02, ...
    6.337289612897340e-01, ...
    8.265239656095000e-02, ...
    1.388289998931950e-01, ...
    2.990012049204680e-01, ...
    3.132510982981190e-01, ...
    8.112090964853810e-01, ...
    9.912846297916420e-01, ...
    5.207729081254330e-01, ...
    6.302668641462300e-01, ...
    8.951857056911970e-01, ...
    3.861555519449320e-01, ...
    1.163615384680970e-01, ...
    6.883770333083240e-01, ...
    5.527988130006930e-01, ...
    8.896501026533780e-01, ...
    3.492752953196300e-01, ...
    2.698884370130900e-01, ...
    1.496087900128300e-02, ...
    4.474933745560670e-01, ...
    2.114616381989100e-02, ...
    4.035753209160530e-01, ...
    8.904186360959050e-01, ...
    2.660168638760300e-01, ...
    9.454311644404340e-01, ...
    8.615807503748600e-01, ...
    5.876715502644290e-01, ...
    9.957452942597430e-01, ...
    4.911606234922820e-01, ...
    9.365990347865030e-01, ...
    4.199776567611740e-01, ...
    5.644771850502480e-01, ...
    1.680491395145880e-01, ...
    4.018878216864020e-01, ...
    5.286190833564010e-01, ...
    5.009339710236220e-01, ...
    1.972509940142050e-01, ...
    1.974563967424710e-01, ...
    6.496600507058480e-01, ...
    8.364722131921321e-01, ...
    5.884871201536090e-01, ...
    7.030284217107240e-01, ...
    7.986836921417541e-01, ...
    4.768138264663580e-01, ...
    8.099814200820320e-01, ...
    3.577273187030700e-01, ...
    3.230454424969130e-01, ...
    4.247520456205830e-01, ...
    8.076307451388010e-01, ...
    8.499335478292470e-01, ...
    8.331383661521310e-01, ...
    5.565199188685600e-01, ...
    4.302764238930660e-01, ...
    6.558563707656490e-01, ...
    9.780234582619850e-01, ...
    6.402630091832310e-01, ...
    9.003953425681200e-01, ...
    9.445225423874910e-01, ...
    5.903699065513770e-01, ...
    3.470194089911040e-01, ...
    3.552069134801660e-01, ...
    9.625948611472710e-01, ...
    3.318313021826700e-01, ...
    8.869578414070201e-02, ...
    7.100440527824891e-01, ...
    7.103951152928150e-01, ...
    6.107027263430430e-01, ...
    8.072164751622900e-02, ...
    6.887298052612369e-01, ...
    4.818370256022720e-01, ...
    2.348892973898390e-01, ...
    7.844212310316140e-01, ...
    7.676299483364590e-01, ...
    5.565416908620590e-01, ...
    7.961983186175110e-01, ...
    7.051410045033050e-01, ...
    3.048626870405220e-01, ...
    8.271810900546520e-01, ...
    4.325805485400280e-01, ...
    3.812793122517310e-01, ...
    1.614010148501960e-01, ...
    6.668565872436650e-01, ...
    8.586618042824150e-01, ...
    5.289445745427830e-01, ...
    9.714643405617520e-01, ...
    4.011718213563650e-01, ...
    4.948015364328410e-01, ...
    1.294228267527290e-01, ...
    2.094492331191200e-01, ...
    2.132610330419900e-01, ...
    2.781823367244480e-01, ...
    4.105333278004700e-01, ...
    8.336403425008250e-01, ...
    9.932364113597369e-01, ...
    3.243657230978670e-01, ...
    6.147081058540890e-01, ...
    3.991350896652490e-01, ...
    2.634520038326510e-01, ...
    8.378284153704660e-01, ...
    3.821771314284660e-01, ...
    2.510479182242640e-01, ...
    3.623615952033370e-01, ...
    2.113305824861540e-01, ...
    8.330998447877820e-01, ...
    9.090913482518360e-01, ...
    9.829006860884400e-02, ...
    9.611831088369630e-01, ...
    6.045102228431550e-01, ...
    3.315324896628000e-03, ...
    7.206655376221360e-01, ...
    2.256908152372070e-01, ...
    1.855316917344610e-01, ...
    2.311429810855270e-01, ...
    8.200831044558820e-01, ...
    1.367365900132510e-01, ...
    1.318683527092770e-01, ...
    3.114039848146050e-01, ...
    7.667727790618190e-01, ...
    1.500976919895490e-01, ...
    6.919092683549550e-01, ...
    9.190732417251330e-01, ...
    8.639736743010460e-01, ...
    8.055439776766780e-01, ...
    7.776328119345161e-01, ...
    6.746701834139740e-01, ...
    1.817726386626120e-01, ...
    5.273800252598600e-02, ...
    3.676084542496170e-01, ...
    3.952905733116390e-01, ...
    6.486656487214690e-01, ...
    1.235580617205980e-01, ...
    6.403433380836360e-01, ...
    2.504831716653350e-01, ...
    8.706661792801070e-01, ...
    2.864751607582320e-01, ...
    7.880268636103840e-01, ...
    3.674966997315630e-01, ...
    5.170323883728279e-01, ...
    7.633513821118290e-01, ...
    6.466791535013720e-01, ...
    7.365328975657620e-01, ...
    9.084093877619180e-01, ...
    6.365801145492960e-01, ...
    1.985230018378000e-03, ...
    3.657609188769760e-01, ...
    3.437635653390380e-01, ...
    6.342426532107600e-01, ...
    7.162725132500160e-01, ...
    3.921301930174840e-01, ...
    5.321540448498699e-01, ...
    9.130317917619980e-01, ...
    3.253241439002210e-01, ...
    7.228865310190650e-01, ...
    5.539268374228510e-01, ...
    8.483565658556100e-01, ...
    3.288023352291450e-01, ...
    1.808481962330860e-01, ...
    5.156340894827780e-01, ...
    2.621419370463780e-01, ...
    8.195359384732021e-01, ...
    9.405179191103750e-01, ...
    2.846664880796650e-01, ...
    3.896651549216660e-01, ...
    1.022587684459330e-01, ...
    6.631212707902870e-01, ...
    7.919817235283499e-02, ...
    8.368273409255000e-02, ...
    4.557118934838620e-01, ...
    1.497937832725210e-01, ...
    5.841154612526840e-01, ...
    2.285572738519670e-01, ...
    3.621016300106890e-01, ...
    8.420955896573590e-01, ...
    1.005753712265640e-01, ...
    3.702642048570630e-01, ...
    3.049103265185400e-02, ...
    4.627857797140190e-01, ...
    4.059965351624400e-02, ...
    3.583766475126040e-01, ...
    2.363147443329520e-01, ...
    7.419080039215780e-01, ...
    2.478219099565510e-01, ...
    1.428406397545900e-01, ...
    7.226323553932050e-01, ...
    2.819970935964940e-01, ...
    5.251520762802810e-01, ...
    2.309460426824850e-01, ...
    5.101393645210840e-01, ...
    9.122995058597529e-01, ...
    1.779498486677000e-02, ...
    8.031065579518200e-02, ...
    7.811919496307110e-01, ...
    4.930974433632090e-01, ...
    4.887306054535930e-01, ...
    9.528585853766899e-02, ...
    4.694244426067100e-01, ...
    6.166068909767120e-01, ...
    3.120166455917140e-01, ...
    6.376245993364700e-02, ...
    6.556641048079660e-01, ...
    7.466095074762630e-01, ...
    2.659921535598080e-01, ...
    5.301248796890140e-01, ...
    8.088529332582149e-01, ...
    3.912492708262290e-01, ...
    7.264947764233201e-01, ...
    ];

DI.fs.v = 1;
DI.tau.v = [];

% Call algorithm --------------------------- %<<<1
DO = qwtb('OADEV', DI);

% Check results --------------------------- %<<<1

% check tau values:
assert(all(DO.tau.v == [1:500]));

% check oadev values:
% reference values according literature mentioned above for averaging factors 1, 10, 100:
avfactor  = [1              10             100];
reference = [2.922319e-01   9.159953e-02   3.241343e-02];
limit =     [0.0000005e-01  0.0000005e-02  0.0000005e-02];
for i = [1:3]
    assert((DO.oadev.v(avfactor(i)) > reference(i) - limit(i)) & (DO.oadev.v(avfactor(i)) < reference(i) + limit(i)));
end % for

end % function

% vim settings modeline: vim: foldmarker=%<<<,%>>> fdm=marker fen ft=octave textwidth=80 tabstop=4 shiftwidth=4
