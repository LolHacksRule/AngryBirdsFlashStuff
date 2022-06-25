package §#!7§
{
   import §7H§.deg2rad;
   import §?]§.§7l§;
   import §?]§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §5C§
   {
       
      
      private const §5"!§:int = 0;
      
      private const §`U§:int = 1;
      
      private var §5'§:Number;
      
      private var §2!9§:int;
      
      private var §2M§:Number;
      
      private var §^!4§:Number;
      
      private var §<2§:int;
      
      private var §0!i§:Number;
      
      private var §!!'§:Number;
      
      private var §6!F§:Number;
      
      private var §`M§:Number;
      
      private var §@!W§:Number;
      
      private var §`-§:Number;
      
      private var §"!^§:Number;
      
      private var §6!n§:Number;
      
      private var §&%§:Number;
      
      private var §,!m§:Number;
      
      private var §7![§:Number;
      
      private var §[=§:Number;
      
      private var §[#§:Number;
      
      private var § ;§:Number;
      
      private var §7'§:Number;
      
      private var §[!n§:Number;
      
      private var §3K§:Number;
      
      private var §?!J§:Number;
      
      private var §0w§:Number;
      
      private var §4!w§:Number;
      
      private var §`>§:Number;
      
      private var §>!h§:Number;
      
      private var §!l§:Number;
      
      private var §>>§:Number;
      
      private var §?!Z§:Number;
      
      private var §7!C§:Number;
      
      private var §8R§:ColorArgb;
      
      private var §13§:ColorArgb;
      
      private var §>!f§:ColorArgb;
      
      private var §!!0§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§]!t§(param1,param2);
         }
         §§push(this.§<2§);
         §§push(this.§0!i§);
         if(_loc5_ || param1)
         {
            §§push(§§pop() + this.§6!F§);
         }
         §§push(§§pop() / §§pop());
         if(_loc5_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            super(param2,_loc3_,this.§<2§,§9!_§,§[9§);
            do
            {
               §@!P§ = false;
            }
            while(_loc4_);
            
         }
      }
      
      public function get §[!z§() : int
      {
         return this.§<2§;
      }
      
      override protected function createParticle() : §=!m§
      {
         return new PDParticle();
      }
      
      private function get §;"§() : Boolean
      {
         return this.§[!z§ >= 20;
      }
      
      override protected function initParticle(param1:§=!m§) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:PDParticle = null;
         var _loc3_:* = NaN;
         _loc2_ = param1 as PDParticle;
         if(!_loc17_)
         {
            §§push(this.§0!i§);
            if(!_loc17_)
            {
               §§push(this.§!!'§);
               loop0:
               while(true)
               {
                  §§push(Math.random() * 2);
                  if(!_loc17_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc18_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc17_)
                        {
                           addr179:
                           §§push(Math.random() * 2);
                           if(_loc18_ || param1)
                           {
                              §§push(§§pop() - 1);
                              break;
                           }
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc18_ || this)
                        {
                           §§push(Number(§§pop()));
                           if(_loc18_)
                           {
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr170:
                                 addr195:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc18_)
                                    {
                                       §§push(0);
                                       if(!(_loc17_ && this))
                                       {
                                          continue loop0;
                                       }
                                       addr192:
                                       §§push(§§pop() + §§pop());
                                       if(_loc18_)
                                       {
                                          break;
                                       }
                                    }
                                    break;
                                 }
                                 addr195:
                              }
                              addr169:
                           }
                           var _loc4_:* = §§pop();
                           §§push(this.§ ;§);
                           if(_loc18_ || param1)
                           {
                              §§push(this.§7'§);
                              if(!(_loc17_ && _loc3_))
                              {
                                 §§push(Math.random() * 2);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc17_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc17_ && _loc2_))
                           {
                              §§push(_loc2_);
                              §§push(_loc5_);
                              if(_loc18_ || _loc3_)
                              {
                                 §§push(§§pop() * Math.cos(_loc4_));
                              }
                              §§pop().velocityX = §§pop();
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc2_);
                              §§push(_loc5_);
                              if(_loc18_ || this)
                              {
                                 §§push(§§pop() * -Math.sin(_loc4_));
                              }
                              §§pop().velocityY = §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 §§push(this.§>!h§);
                                 if(_loc18_ || this)
                                 {
                                    §§push(this.§!l§);
                                    if(_loc18_ || _loc2_)
                                    {
                                       §§push(Math.random() * 2);
                                       if(_loc18_ || _loc2_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().radius = §§pop();
                                 loop3:
                                 for(; _loc18_; addr245:,if(_loc17_ && param1)
                                 {
                                    continue;
                                 },if(false)
                                 {
                                    while(true)
                                    {
                                       _loc2_.radialAcceleration = this.§?!J§;
                                       §§goto(addr259);
                                       §§goto(addr245);
                                    }
                                    continue;
                                    addr254:
                                 },§§push(Math.random() * 2),if(_loc18_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc18_)
                                    {
                                       addr442:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    §§push(this.§`M§);
                                    if(!(_loc17_ && _loc3_))
                                    {
                                       §§push(this.§@!W§);
                                       if(_loc18_)
                                       {
                                          §§push(§§pop() * _loc6_);
                                          if(_loc18_ || _loc2_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc18_)
                                             {
                                                addr470:
                                                §§push(Number(§§pop()));
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr470);
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       if(!(_loc17_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       if(_loc18_ || param1)
                                       {
                                          if(!isNaN(this.§6!n§))
                                          {
                                             addr685:
                                             _loc8_ = Number(this.§6!n§);
                                             addr686:
                                             addr684:
                                             addr682:
                                             if(!isNaN(this.§&%§))
                                             {
                                                addr639:
                                                §§push(_loc8_);
                                                if(_loc18_ || _loc3_)
                                                {
                                                   §§push(this.§&%§);
                                                   if(_loc18_)
                                                   {
                                                      §§push(Math.random() * 2);
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                         if(_loc18_ || param1)
                                                         {
                                                            addr668:
                                                            _loc8_ = Number(§§pop() + §§pop() * §§pop());
                                                            addr669:
                                                            addr667:
                                                            addr666:
                                                            if(!(_loc17_ && _loc2_))
                                                            {
                                                               addr600:
                                                               §§push(_loc7_);
                                                               if(_loc18_ || _loc3_)
                                                               {
                                                                  if(_loc18_ || _loc2_)
                                                                  {
                                                                     addr617:
                                                                     §§push(0.1);
                                                                     if(_loc18_)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(0.1);
                                                                              if(_loc18_ || _loc3_)
                                                                              {
                                                                                 addr631:
                                                                                 _loc7_ = Number(§§pop());
                                                                                 addr632:
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(0.1);
                                                                                    if(!(_loc17_ && this))
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§push(0.1);
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     addr527:
                                                                                                                     §§push(_loc2_);
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / texture.width);
                                                                                                                     }
                                                                                                                     §§pop().scaleX = §§pop();
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(!(_loc17_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                       {
                                                                                                                                          addr511:
                                                                                                                                          §§push(§§pop() / _loc3_);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr514:
                                                                                                                                             §§push(§§pop() / texture.width);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§pop().scaleDeltaX = §§pop();
                                                                                                                                       if(_loc18_ || this)
                                                                                                                                       {
                                                                                                                                          addr525:
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr527);
                                                                                                                                          }
                                                                                                                                          §§push(this.§`-§);
                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                          {
                                                                                                                                             addr696:
                                                                                                                                             §§push(this.§"!^§);
                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                             {
                                                                                                                                                addr706:
                                                                                                                                                §§push(§§pop() * _loc6_);
                                                                                                                                                if(_loc18_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr714:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      addr718:
                                                                                                                                                      var _loc9_:Number;
                                                                                                                                                      §§push(_loc9_ = §§pop());
                                                                                                                                                      if(_loc18_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc10_:* = §§pop();
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(!isNaN(this.§,!m§))
                                                                                                                                                         {
                                                                                                                                                            addr927:
                                                                                                                                                            _loc10_ = Number(this.§,!m§);
                                                                                                                                                            addr926:
                                                                                                                                                            addr924:
                                                                                                                                                            addr928:
                                                                                                                                                            if(!isNaN(this.§7![§))
                                                                                                                                                            {
                                                                                                                                                               addr890:
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               §§push(this.§7![§);
                                                                                                                                                               if(!_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Math.random() * 2);
                                                                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc18_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr917:
                                                                                                                                                                  _loc10_ = Number(§§pop());
                                                                                                                                                                  addr918:
                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        addr849:
                                                                                                                                                                        §§push(0.1);
                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc17_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr873:
                                                                                                                                                                                    _loc9_ = 0.1;
                                                                                                                                                                                    addr874:
                                                                                                                                                                                    addr872:
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr791:
                                                                                                                                                                                          §§push(_loc10_);
                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0.1);
                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr812:
                                                                                                                                                                                                               §§push(0.1);
                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr815:
                                                                                                                                                                                                                  if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr823:
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     if(_loc18_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                                                                        addr772:
                                                                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() / texture.height);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().scaleY = §§pop();
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc2_);
                                                                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                                                                              if(_loc18_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr757:
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().scaleDeltaY = §§pop() / texture.height;
                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr772);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          var _loc11_:ColorArgb = _loc2_.colorArgb;
                                                                                                                                                                                                                                          var _loc12_:ColorArgb = _loc2_.colorArgbDelta;
                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc11_.red = this.§8R§.red;
                                                                                                                                                                                                                                             _loc11_.green = this.§8R§.green;
                                                                                                                                                                                                                                             _loc11_.blue = this.§8R§.blue;
                                                                                                                                                                                                                                             _loc11_.alpha = this.§8R§.alpha;
                                                                                                                                                                                                                                             addr1130:
                                                                                                                                                                                                                                             addr1132:
                                                                                                                                                                                                                                             addr1131:
                                                                                                                                                                                                                                             if(this.§13§.red != 0)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                                                                   §§push(_loc11_.red);
                                                                                                                                                                                                                                                   if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§13§.red);
                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Math.random() * 2);
                                                                                                                                                                                                                                                         if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - 1);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().red = §§pop();
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1170:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1191:
                                                                                                                                                                                                                                             addr1197:
                                                                                                                                                                                                                                             addr1177:
                                                                                                                                                                                                                                             addr1184:
                                                                                                                                                                                                                                             §§push(this.§13§.green);
                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1084:
                                                                                                                                                                                                                                                if(§§pop() != 0)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                         §§push(_loc11_.green);
                                                                                                                                                                                                                                                         if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§13§.green);
                                                                                                                                                                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Math.random() * 2);
                                                                                                                                                                                                                                                               if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().green = §§pop();
                                                                                                                                                                                                                                                         addr1124:
                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1008:
                                                                                                                                                                                                                                                            §§push(this.§13§);
                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1014:
                                                                                                                                                                                                                                                               §§push(§§pop().blue);
                                                                                                                                                                                                                                                               if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1022:
                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                  if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1037:
                                                                                                                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                                                                                                                           §§push(_loc11_.blue);
                                                                                                                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§13§.blue);
                                                                                                                                                                                                                                                                              if(_loc18_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                 if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr940:
                                                                                                                                                                                                                                                                                 §§push(this.§13§);
                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                                                                         §§push(_loc11_.alpha);
                                                                                                                                                                                                                                                                                                         if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§13§.alpha);
                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                         addr995:
                                                                                                                                                                                                                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1008);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1198:
                                                                                                                                                                                                                                                                                                                  §§push(this.§>!f§.red);
                                                                                                                                                                                                                                                                                                                  if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1209:
                                                                                                                                                                                                                                                                                                                     var _loc13_:Number = §§pop();
                                                                                                                                                                                                                                                                                                                     §§push(this.§>!f§.green);
                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     var _loc14_:* = §§pop();
                                                                                                                                                                                                                                                                                                                     §§push(this.§>!f§.blue);
                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     var _loc15_:* = §§pop();
                                                                                                                                                                                                                                                                                                                     §§push(this.§>!f§.alpha);
                                                                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     var _loc16_:* = §§pop();
                                                                                                                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1664:
                                                                                                                                                                                                                                                                                                                        addr1663:
                                                                                                                                                                                                                                                                                                                        addr1662:
                                                                                                                                                                                                                                                                                                                        if(this.§!!0§.red != 0)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1677:
                                                                                                                                                                                                                                                                                                                           _loc13_ += this.§!!0§.red * (Math.random() * 2 - 1);
                                                                                                                                                                                                                                                                                                                           addr1678:
                                                                                                                                                                                                                                                                                                                           addr1665:
                                                                                                                                                                                                                                                                                                                           addr1669:
                                                                                                                                                                                                                                                                                                                           addr1666:
                                                                                                                                                                                                                                                                                                                           addr1675:
                                                                                                                                                                                                                                                                                                                           addr1673:
                                                                                                                                                                                                                                                                                                                           addr1676:
                                                                                                                                                                                                                                                                                                                           addr1674:
                                                                                                                                                                                                                                                                                                                           addr1668:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1608:
                                                                                                                                                                                                                                                                                                                        §§push(this.§!!0§);
                                                                                                                                                                                                                                                                                                                        if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1616:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().green);
                                                                                                                                                                                                                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1624:
                                                                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1630:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                    §§push(this.§!!0§);
                                                                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1637:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop().green);
                                                                                                                                                                                                                                                                                                                                       §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1658:
                                                                                                                                                                                                                                                                                                                                          _loc14_ = Number(§§pop() + §§pop() * (§§pop() - 1));
                                                                                                                                                                                                                                                                                                                                          addr1656:
                                                                                                                                                                                                                                                                                                                                          addr1655:
                                                                                                                                                                                                                                                                                                                                          addr1657:
                                                                                                                                                                                                                                                                                                                                          addr1659:
                                                                                                                                                                                                                                                                                                                                          §§push(this.§!!0§);
                                                                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1536:
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1544:
                                                                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1547:
                                                                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1557:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                            if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1567:
                                                                                                                                                                                                                                                                                                                                                               §§push(this.§!!0§.blue);
                                                                                                                                                                                                                                                                                                                                                               §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1580:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * (§§pop() - 1));
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1595:
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1603:
                                                                                                                                                                                                                                                                                                                                                                           _loc15_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                                           addr1604:
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§!!0§);
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr1426:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1429:
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§!!0§);
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1473:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1488:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1502:
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1521:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         _loc16_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1522:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1367:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc11_.red);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1391:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1392:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc11_.green);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1365:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1366:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc11_.blue);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1330:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1331:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc11_.alpha);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1272:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc18_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1678);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1604);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1426);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1522);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1366);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1331);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1272);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1547);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1392);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1330);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1365);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1391);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1665);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1616);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1536);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1595);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1521);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1656);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1580);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1637);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1655);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1580);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1473);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1669);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1488);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1630);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1657);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1502);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1367);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1544);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1666);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1658);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1603);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1429);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1658);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1677);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1675);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1637);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1673);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1676);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1630);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1659);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1603);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1624);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1630);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1608);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1674);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1668);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1658);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1664);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1663);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1662);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1630);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1209);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1191);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1124);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1037);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr995);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1198);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1022);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1014);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1209);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1130);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1008);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1197);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1177);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr940);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1132);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1084);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1131);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1130);
                                                                                                                                                                                                                                                            addr1126:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1184);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1170);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1124);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1008);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1209);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1126);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr874);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr772);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                 if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr757);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr890);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr841:
                                                                                                                                                                                                                        §§goto(addr841);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr872);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr890);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr823);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr772);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr849);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr926);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr890);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr873);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr815);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr924);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr918);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr928);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr873);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr791);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr890);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr917);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr873);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr927);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr917);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr812);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr718);
                                                                                                                                       }
                                                                                                                                       §§goto(addr527);
                                                                                                                                    }
                                                                                                                                    §§goto(addr511);
                                                                                                                                 }
                                                                                                                                 §§goto(addr514);
                                                                                                                              }
                                                                                                                              §§goto(addr686);
                                                                                                                           }
                                                                                                                           §§goto(addr639);
                                                                                                                        }
                                                                                                                        §§goto(addr669);
                                                                                                                     }
                                                                                                                     addr599:
                                                                                                                     §§goto(addr599);
                                                                                                                  }
                                                                                                                  §§goto(addr668);
                                                                                                               }
                                                                                                               §§goto(addr718);
                                                                                                            }
                                                                                                            §§goto(addr685);
                                                                                                         }
                                                                                                         §§goto(addr667);
                                                                                                      }
                                                                                                      §§goto(addr631);
                                                                                                   }
                                                                                                   §§goto(addr718);
                                                                                                }
                                                                                                §§goto(addr632);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr527);
                                                                                       }
                                                                                       §§goto(addr617);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr718);
                                                                           }
                                                                        }
                                                                        §§goto(addr631);
                                                                     }
                                                                     §§goto(addr666);
                                                                  }
                                                                  §§goto(addr684);
                                                               }
                                                               §§goto(addr631);
                                                            }
                                                            §§goto(addr682);
                                                         }
                                                      }
                                                      §§goto(addr706);
                                                   }
                                                   §§goto(addr714);
                                                }
                                                §§goto(addr696);
                                             }
                                          }
                                          §§goto(addr600);
                                       }
                                       §§goto(addr525);
                                    }
                                    §§goto(addr470);
                                 },§§goto(addr442))
                                 {
                                    §§push(_loc2_);
                                    §§push(this.§>!h§);
                                    if(_loc18_ || _loc3_)
                                    {
                                       §§push(§§pop() / _loc3_);
                                    }
                                    §§pop().radiusDelta = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       §§push(this.§[=§);
                                       if(!_loc17_)
                                       {
                                          §§push(this.§[#§);
                                          if(!(_loc17_ && param1))
                                          {
                                             §§push(Math.random() * 2);
                                             if(_loc18_ || this)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().rotation = §§pop();
                                       while(!(_loc17_ && param1))
                                       {
                                          §§push(_loc2_);
                                          §§push(this.§?!Z§);
                                          if(_loc18_ || this)
                                          {
                                             §§push(this.§7!C§);
                                             if(_loc18_ || _loc3_)
                                             {
                                                §§push(Math.random() * 2);
                                                if(!(_loc17_ && _loc3_))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().rotationDelta = §§pop();
                                          continue loop2;
                                          while(!(_loc17_ && this))
                                          {
                                             _loc2_.tangentialAcceleration = this.§4!w§;
                                             if(!_loc17_)
                                             {
                                                if(_loc18_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr195);
                     }
                     break;
                  }
                  break;
               }
               §§goto(addr192);
               §§push(§§pop() * §§pop());
            }
            §§goto(addr169);
         }
         §§goto(addr110);
      }
      
      override protected function advanceParticle(param1:§=!m§, param2:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§6k§ - _loc3_.§[!v§);
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc14_ && param1))
         {
            §§push(param2);
            if(_loc13_ || param1)
            {
               §§push(§§pop() > §§pop());
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(_loc13_)
                     {
                        §§push(param2);
                        if(!_loc14_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc14_ && param1))
                           {
                              addr97:
                              §§push(Number(§§pop()));
                              if(_loc13_)
                              {
                                 param2 = §§pop();
                                 if(!(_loc14_ && _loc3_))
                                 {
                                    _loc3_.§[!v§ += param2;
                                    loop0:
                                    while(true)
                                    {
                                       if(this.§2!9§ != this.§`U§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          loop1:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(this.§;"§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc13_ || param2)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           while(true)
                                                                           {
                                                                              loop68:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.x - _loc3_.startX);
                                                                                       loop70:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop71:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc13_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc3_.y - _loc3_.startY);
                                                                                                   loop73:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc13_ || param1)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop74:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                               addr1156:
                                                                                                               while(!_loc14_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0.01);
                                                                                                                           loop112:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 addr1162:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(0.01);
                                                                                                                                    addr1163:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr1164:
                                                                                                                                       loop106:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          addr1165:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop106;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1162:
                                                                                                                              }
                                                                                                                              loop81:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 addr1136:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    loop83:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop85:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   addr1144:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         addr1109:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc13_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue loop112;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            while(!(_loc14_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               continue loop85;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1163);
                                                                                                                                                         }
                                                                                                                                                         addr916:
                                                                                                                                                         continue loop112;
                                                                                                                                                         if(!(_loc13_ || param2))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               _loc11_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§;"§);
                                                                                                                                                                  continue loop68;
                                                                                                                                                               }
                                                                                                                                                               addr927:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.radialAcceleration);
                                                                                                                                                                  continue loop83;
                                                                                                                                                               }
                                                                                                                                                               addr1044:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop85;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             if(_loc14_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop117:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                addr1089:
                                                                                                                                                while(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1044);
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   continue loop117;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1133);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1164);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1231);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop81;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop73;
                                                                                                            }
                                                                                                            loop110:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc14_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop74;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc12_ = §§pop();
                                                                                                                  addr1001:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc13_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(!(_loc14_ && param2))
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(!(_loc13_ || this))
                                                                                                                           {
                                                                                                                              loop132:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr970:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc14_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             addr886:
                                                                                                                                             loop135:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc14_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop110;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr924);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1109);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1022);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_ || param1)
                                                                                                                                                         {
                                                                                                                                                            break loop135;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr961:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1046);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1156);
                                                                                                                                             }
                                                                                                                                             continue loop132;
                                                                                                                                          }
                                                                                                                                          addr980:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1073);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1094);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1030);
                                                                                                                                    continue loop132;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr969:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc13_ || param1)
                                                                                                                        {
                                                                                                                           continue loop70;
                                                                                                                        }
                                                                                                                        continue loop71;
                                                                                                                     }
                                                                                                                     §§goto(addr1034);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1229);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop103:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_.skipUpdate);
                                                                                                      addr1363:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         addr1364:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr1365:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr1367:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§;"§);
                                                                                                                        addr1327:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1366:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop103;
                                                                                                      }
                                                                                                   }
                                                                                                   addr1361:
                                                                                                }
                                                                                                §§goto(addr1329);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr1195:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr644:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_.x += _loc3_.velocityX * param2;
                                                                                       addr654:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc14_ && param2))
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                _loc3_.y += _loc3_.velocityY * param2;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr612);
                                                                                                }
                                                                                                addr643:
                                                                                             }
                                                                                             §§goto(addr1231);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr927);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr644:
                                                                                 }
                                                                                 §§goto(addr1165);
                                                                              }
                                                                           }
                                                                           addr1193:
                                                                        }
                                                                        §§goto(addr1363);
                                                                     }
                                                                     addr1185:
                                                                  }
                                                                  §§goto(addr1323);
                                                                  if(_loc14_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr1073);
                                                                  §§push(_loc9_);
                                                               }
                                                            }
                                                            §§goto(addr1332);
                                                         }
                                                         addr1220:
                                                      }
                                                      §§goto(addr1193);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc14_ && this)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc13_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(_loc13_ || _loc3_)
                                                                           {
                                                                              §§push(this.§;"§);
                                                                              continue loop16;
                                                                           }
                                                                           §§goto(addr1232);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1195);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        loop21:
                                                                        while(!_loc14_)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(_loc13_ || param1)
                                                                                       {
                                                                                          _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc13_ || param1)
                                                                                             {
                                                                                                §§push(_loc3_.colorArgb);
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.colorArgb);
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().red);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(_loc3_.colorArgbDelta);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().red);
                                                                                                            addr445:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param2);
                                                                                                               addr446:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr447:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr285:
                                                                                                            if(!(_loc13_ || this))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(§§pop().alpha);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§push(param2);
                                                                                                               if(!(_loc14_ && param2))
                                                                                                               {
                                                                                                                  if(_loc13_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        addr313:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc13_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr320:
                                                                                                                           if(!(_loc14_ && param2))
                                                                                                                           {
                                                                                                                              addr328:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                 {
                                                                                                                                    §§pop().alpha = §§pop();
                                                                                                                                    loop51:
                                                                                                                                    while(!(_loc14_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                       loop52:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc13_ || this)
                                                                                                                                          {
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc14_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                  loop54:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop51;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc13_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc13_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1096);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param2);
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * 2);
                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr573:
                                                                                                                                                                                             if(!(_loc14_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            addr602:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     param2 = §§pop();
                                                                                                                                                                                                                     continue loop21;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1062);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr983);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr601:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1117);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr969);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr886);
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop54;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr602);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1136);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1095);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr970);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr573);
                                                                                                                                                                           }
                                                                                                                                                                           addr560:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1156);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        loop41:
                                                                                                                                                                        while(!(_loc14_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.colorArgb);
                                                                                                                                                                              loop42:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_.colorArgb);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().blue);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                             loop45:
                                                                                                                                                                                             while(!_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().blue);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                   addr364:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      addr365:
                                                                                                                                                                                                      loop48:
                                                                                                                                                                                                      while(_loc13_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc13_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().blue = §§pop();
                                                                                                                                                                                                                     addr448:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop23;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr449:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                           break loop42;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().red = §§pop();
                                                                                                                                                                                                                        §§goto(addr449);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr448:
                                                                                                                                                                                                                     addr385:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                  addr262:
                                                                                                                                                                                                                  if(_loc14_ && param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc13_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                     if(_loc14_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop45;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr285);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr448);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().green = §§pop();
                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr418:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr445);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr448);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param2);
                                                                                                                                                                                                            addr409:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               break loop48;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(!(_loc14_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr418);
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr447);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr320);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr407:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr408);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr358:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc3_.colorArgb);
                                                                                                                                                                                       addr243:
                                                                                                                                                                                       break;
                                                                                                                                                                                       if(!(_loc13_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().alpha);
                                                                                                                                                                                       if(!(_loc14_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr262);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr328);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().green);
                                                                                                                                                                                       addr405:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr407);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr404:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc3_.colorArgb);
                                                                                                                                                                                 addr396:
                                                                                                                                                                                 break;
                                                                                                                                                                                 if(_loc14_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr243);
                                                                                                                                                                              }
                                                                                                                                                                              while(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr404);
                                                                                                                                                                                 §§push(_loc3_.colorArgb);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop25;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr980);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr763);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr924);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1266);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr822);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr385);
                                                                                                                                                      if(!(_loc14_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop52;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr785);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1001);
                                                                                                                                             }
                                                                                                                                             §§goto(addr721);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             loop18:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§;"§);
                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                         addr510:
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop1;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1185);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr833);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr629:
                                                                                                                                                         while(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            continue loop18;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1327);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1364);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1220);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr510);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr615);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr684);
                                                                                                                                 }
                                                                                                                                 §§goto(addr405);
                                                                                                                              }
                                                                                                                              §§goto(addr358);
                                                                                                                           }
                                                                                                                           §§goto(addr363);
                                                                                                                        }
                                                                                                                        §§goto(addr365);
                                                                                                                     }
                                                                                                                     §§goto(addr446);
                                                                                                                  }
                                                                                                                  §§goto(addr409);
                                                                                                               }
                                                                                                               §§goto(addr364);
                                                                                                            }
                                                                                                            §§goto(addr313);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr448);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                             if(!(_loc13_ || this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc14_ && _loc3_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             §§goto(addr113);
                                                                                          }
                                                                                          §§goto(addr1089);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr643);
                                                                                 }
                                                                                 §§goto(addr1333);
                                                                              }
                                                                              addr468:
                                                                           }
                                                                           §§goto(addr1299);
                                                                        }
                                                                        §§goto(addr1063);
                                                                     }
                                                                     §§goto(addr1299);
                                                                  }
                                                                  §§goto(addr113);
                                                               }
                                                               addr530:
                                                            }
                                                            §§goto(addr629);
                                                         }
                                                         §§goto(addr1365);
                                                      }
                                                   }
                                                }
                                                §§goto(addr1366);
                                             }
                                          }
                                       }
                                       §§goto(addr1361);
                                    }
                                 }
                                 §§goto(addr1162);
                              }
                              §§goto(addr1033);
                           }
                           §§goto(addr1164);
                        }
                        §§goto(addr601);
                     }
                     §§goto(addr1070);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc13_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc14_ && param2))
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr1094);
                     }
                  }
                  §§goto(addr1000);
               }
               §§goto(addr559);
            }
            §§goto(addr1231);
         }
         §§goto(addr1158);
      }
      
      private function §]!t§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§2M§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            while(true)
            {
               this.§^!4§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               while(true)
               {
                  this.§[!n§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§3K§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§2!9§ = this.§-!X§(param1.emitterType);
                        while(true)
                        {
                           this.§<2§ = this.§-!X§(param1.maxParticles);
                           while(true)
                           {
                              this.§0!i§ = Math.max(0.01,this.§!D§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§!!'§ = this.§!D§(param1.particleLifespanVariance);
                                 loop7:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() == 1)
                                    {
                                       loop61:
                                       while(_loc3_)
                                       {
                                          this.§6!F§ = this.§!D§(param1.particleInterval);
                                          loop62:
                                          while(true)
                                          {
                                             addr681:
                                             while(true)
                                             {
                                                this.§`M§ = this.§!D§(param1.startParticleSize);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§`M§);
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      §§push(param2.height);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            addr676:
                                                            §§push(§§pop() / param2.width);
                                                         }
                                                         §§pop().§`-§ = §§pop();
                                                         loop11:
                                                         for(; _loc3_; while(!(_loc4_ && param1))
                                                         {
                                                            §§goto(addr551);
                                                         })
                                                         {
                                                            this.§@!W§ = this.§!D§(param1.startParticleSizeVariance);
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§@!W§);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(param2.height);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        addr643:
                                                                        §§push(§§pop() / param2.width);
                                                                     }
                                                                     §§pop().§"!^§ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop62;
                                                                        }
                                                                        if(param1.startParticleSizeX.length() == 1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§`M§ = this.§!D§(param1.startParticleSizeX);
                                                                              addr622:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr616:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(param1.startParticleSizeVarianceX.length() == 1)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§@!W§ = this.§!D§(param1.startParticleSizeVarianceX);
                                                                                 addr600:
                                                                                 do
                                                                                 {
                                                                                    if(_loc4_ && _loc3_)
                                                                                    {
                                                                                       continue loop61;
                                                                                    }
                                                                                 }
                                                                                 while(_loc3_);
                                                                                 
                                                                                 continue loop7;
                                                                              }
                                                                              addr594:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(param1.startParticleSizeY.length() != 1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(param1.startParticleSizeVarianceY.length() == 1)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          this.§"!^§ = this.§!D§(param1.startParticleSizeVarianceY);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          loop37:
                                                                                          while(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             this.§,!m§ = this.§!D§(param1.finishParticleSizeY);
                                                                                             while(true)
                                                                                             {
                                                                                                loop39:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                   {
                                                                                                      loop40:
                                                                                                      while(_loc3_ || param1)
                                                                                                      {
                                                                                                         this.§7![§ = this.§!D§(param1.FinishParticleSizeVarianceY);
                                                                                                         while(!_loc4_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§[=§ = deg2rad(this.§!D§(param1.angle));
                                                                                                               loop43:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§[#§ = deg2rad(this.§!D§(param1.angleVariance));
                                                                                                                  loop44:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§ ;§ = this.§!D§(param1.speed);
                                                                                                                     for(; !(_loc4_ && this); loop46:
                                                                                                                     while(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        continue loop40;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ || param1)
                                                                                                                           {
                                                                                                                              continue loop44;
                                                                                                                           }
                                                                                                                           continue loop46;
                                                                                                                        }
                                                                                                                        continue loop44;
                                                                                                                     })
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           this.§7'§ = this.§!D§(param1.speedVariance);
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr600);
                                                                                                                     }
                                                                                                                     while(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§&%§);
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(param2.height);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr489:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(param2.width);
                                                                                                                              }
                                                                                                                              §§pop().§7![§ = §§pop();
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr455:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(param1.finishParticleSizeX.length() == 1)
                                                                                                                                    {
                                                                                                                                       loop33:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§6!n§ = this.§!D§(param1.finishParticleSizeX);
                                                                                                                                          break loop40;
                                                                                                                                          addr447:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc4_ && param1)
                                                                                                                                             {
                                                                                                                                                continue loop33;
                                                                                                                                             }
                                                                                                                                             addr454:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                                {
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                                continue loop39;
                                                                                                                                                §§goto(addr454);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr435:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                                       {
                                                                                                                                          addr441:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§&%§ = this.§!D§(param1.FinishParticleSizeVarianceX);
                                                                                                                                             §§goto(addr447);
                                                                                                                                          }
                                                                                                                                          addr441:
                                                                                                                                       }
                                                                                                                                       §§goto(addr415);
                                                                                                                                       break loop40;
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr489);
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        continue loop43;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                         if(_loc4_ && _loc3_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         this.§?!J§ = this.§!D§(param1.radialAcceleration);
                                                                                                         §§goto(addr323);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr435);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr373);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr565:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(param1.finishParticleSize.length() != 1)
                                                                                       {
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       §§goto(addr535);
                                                                                       §§goto(addr565);
                                                                                    }
                                                                                 }
                                                                                 addr551:
                                                                              }
                                                                              §§goto(addr572);
                                                                           }
                                                                           §§goto(addr622);
                                                                        }
                                                                        if(!(_loc3_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        this.§!!0§ = this.§>!9§(param1.finishColorVariance);
                                                                        §§goto(addr128);
                                                                     }
                                                                     continue loop62;
                                                                  }
                                                               }
                                                               §§goto(addr643);
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   §§goto(addr676);
                                                }
                                                continue loop62;
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                    this.§6!F§ = 0;
                                    continue loop6;
                                 }
                              }
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              this.§13§ = this.§>!9§(param1.startColorVariance);
                              §§goto(addr172);
                           }
                        }
                     }
                  }
               }
               if(_loc4_ && param2)
               {
                  continue;
               }
               §§push(this);
               §§push(this.§6!n§);
               if(_loc3_)
               {
                  §§push(param2.height);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_)
                     {
                        addr526:
                        §§push(§§pop() / param2.width);
                     }
                     §§pop().§,!m§ = §§pop();
                     §§goto(addr528);
                  }
               }
               §§goto(addr526);
            }
         }
         §§goto(addr441);
      }
      
      protected function §-!X§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §!D§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §"g§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §>!9§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc4_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               addr48:
               if(_loc4_)
               {
                  continue;
               }
               return _loc2_;
               addr60:
            }
         }
         while(true)
         {
            _loc2_.blue = parseFloat(param1.attribute("blue"));
            while(_loc3_)
            {
               _loc2_.alpha = parseFloat(param1.attribute("alpha"));
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr60);
      }
      
      protected function §9!X§(param1:XMLList) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§-!X§(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || this)
         {
            var _loc3_:* = §§pop();
            if(!(_loc5_ && this))
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!(_loc4_ || _loc3_))
                           {
                              addr311:
                           }
                        }
                        else
                        {
                           addr257:
                           §§push(4);
                           if(_loc4_)
                           {
                              addr260:
                           }
                           else
                           {
                              addr339:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(1);
                                    if(_loc4_)
                                    {
                                       addr386:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             return Context3DBlendFactor.ZERO;
                                          case 1:
                                             return Context3DBlendFactor.ONE;
                                          case 2:
                                             return Context3DBlendFactor.SOURCE_COLOR;
                                          case 3:
                                             return Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR;
                                          case 4:
                                             return Context3DBlendFactor.SOURCE_ALPHA;
                                          case 5:
                                             return Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
                                          case 6:
                                             return Context3DBlendFactor.DESTINATION_ALPHA;
                                          case 7:
                                             return Context3DBlendFactor.ONE_MINUS_DESTINATION_ALPHA;
                                          case 8:
                                             return Context3DBlendFactor.DESTINATION_COLOR;
                                          case 9:
                                             return Context3DBlendFactor.ONE_MINUS_DESTINATION_COLOR;
                                          default:
                                             throw new ArgumentError("unsupported blending function: " + _loc2_);
                                       }
                                       addr386:
                                    }
                                    else
                                    {
                                       addr237:
                                       §§goto(addr386);
                                    }
                                 }
                                 else
                                 {
                                    addr280:
                                    §§push(5);
                                    if(!_loc4_)
                                    {
                                    }
                                 }
                                 §§goto(addr386);
                              }
                              else
                              {
                                 §§push(768);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(2);
                                             if(!_loc5_)
                                             {
                                                addr214:
                                             }
                                             §§goto(addr386);
                                          }
                                          else
                                          {
                                             §§goto(addr257);
                                          }
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(_loc3_);
                                             if(_loc4_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(3);
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§goto(addr237);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr311);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr331:
                                                      §§push(7);
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§goto(addr339);
                                                      }
                                                      else
                                                      {
                                                         addr343:
                                                         §§push(_loc3_);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr361:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  addr364:
                                                                  §§push(8);
                                                                  if(_loc5_ && param1)
                                                                  {
                                                                     addr376:
                                                                     if(§§pop() !== _loc3_)
                                                                     {
                                                                        §§goto(addr386);
                                                                        §§push(10);
                                                                     }
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               addr378:
                                                               §§push(9);
                                                               if(_loc4_)
                                                               {
                                                                  addr381:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(775);
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr376);
                                                               }
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                         §§goto(addr376);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§goto(addr257);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr280);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc4_ || param1)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        §§goto(addr280);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr331);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(772);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 addr303:
                                                                                 §§push(6);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr311);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr376);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr376);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(773);
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    addr328:
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(774);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr343);
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr381);
                                                                           }
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr386);
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                }
                                                §§goto(addr386);
                                             }
                                             §§goto(addr361);
                                          }
                                          §§goto(addr376);
                                       }
                                       §§goto(addr386);
                                    }
                                    §§goto(addr328);
                                 }
                              }
                              §§goto(addr343);
                           }
                           §§goto(addr361);
                        }
                        §§goto(addr381);
                     }
                     §§goto(addr386);
                  }
                  §§goto(addr361);
               }
               §§goto(addr214);
            }
            §§goto(addr303);
         }
         §§goto(addr386);
      }
      
      protected function §+B§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§"g§(param1));
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(§7l§.§6!%§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr133:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr90:
                                 while(true)
                                 {
                                    §§push(§7l§.§`!,§);
                                    addr92:
                                    while(true)
                                    {
                                       if(!(_loc4_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr132:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              continue loop3;
                           }
                           if(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr44:
                                       while(true)
                                       {
                                          §§push(§7l§.NONE);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       §§goto(addr92);
                                    }
                                    addr125:
                                 }
                                 else
                                 {
                                    §§goto(addr132);
                                 }
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr68);
                        }
                        continue loop1;
                     }
                  }
               }
               if(!(_loc3_ && param1))
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr133);
      }
   }
}

import §#!7§.§=!m§;

class PDParticle extends §=!m§
{
    
   
   public var colorArgb:ColorArgb;
   
   public var colorArgbDelta:ColorArgb;
   
   public var startX:Number;
   
   public var startY:Number;
   
   public var velocityX:Number;
   
   public var velocityY:Number;
   
   public var radialAcceleration:Number;
   
   public var tangentialAcceleration:Number;
   
   public var radius:Number;
   
   public var radiusDelta:Number;
   
   public var rotationDelta:Number;
   
   public var scaleDeltaX:Number;
   
   public var scaleDeltaY:Number;
   
   public var skipUpdate:Boolean;
   
   function PDParticle()
   {
      super();
      this.colorArgb = new ColorArgb();
      this.colorArgbDelta = new ColorArgb();
   }
}

class ColorArgb
{
    
   
   public var alpha:Number = 0.0;
   
   public var red:Number;
   
   public var green:Number;
   
   public var blue:Number;
   
   function ColorArgb()
   {
      super();
   }
   
   public function toRgb() : uint
   {
      return int(this.red * 255) << 16 | int(this.green * 255) << 8 | int(this.blue * 255);
   }
}
