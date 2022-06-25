package §`6§
{
   import §'j§.deg2rad;
   import §0! §.§ case§;
   import §0! §.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §&U§
   {
       
      
      private const §2t§:int = 0;
      
      private const §1b§:int = 1;
      
      private var §9G§:Number;
      
      private var §8!E§:int;
      
      private var §0!;§:Number;
      
      private var §^!3§:Number;
      
      private var §07§:int;
      
      private var §<n§:Number;
      
      private var §!t§:Number;
      
      private var §6C§:Number;
      
      private var §7! §:Number;
      
      private var §59§:Number;
      
      private var §%r§:Number;
      
      private var §^p§:Number;
      
      private var §2'§:Number;
      
      private var §[v§:Number;
      
      private var §3!&§:Number;
      
      private var §48§:Number;
      
      private var §5!M§:Number;
      
      private var §'A§:Number;
      
      private var §5!G§:Number;
      
      private var §+U§:Number;
      
      private var §4a§:Number;
      
      private var §>!§:Number;
      
      private var §2!0§:Number;
      
      private var §1!#§:Number;
      
      private var §58§:Number;
      
      private var §&!§:Number;
      
      private var §7;§:Number;
      
      private var § if§:Number;
      
      private var §'!#§:Number;
      
      private var §&P§:Number;
      
      private var §!S§:Number;
      
      private var §43§:ColorArgb;
      
      private var §^Z§:ColorArgb;
      
      private var §?!I§:ColorArgb;
      
      private var §"t§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§,2§(param1,param2);
         }
         §§push(this.§07§);
         §§push(this.§<n§);
         if(!_loc4_)
         {
            §§push(§§pop() + this.§6C§);
         }
         §§push(§§pop() / §§pop());
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            super(param2,_loc3_,this.§07§,§@s§,§"k§);
            if(!_loc4_)
            {
               addr74:
               §7R§ = false;
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function get §`+§() : int
      {
         return this.§07§;
      }
      
      override protected function createParticle() : §61§
      {
         return new PDParticle();
      }
      
      private function get §6@§() : Boolean
      {
         return this.§`+§ >= 20;
      }
      
      override protected function initParticle(param1:§61§) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         §§push(this.§<n§);
         §§push(this.§!t§);
         if(!(_loc17_ && this))
         {
            §§push(Math.random() * 2);
            if(_loc18_)
            {
               §§push(§§pop() - 1);
               if(!_loc17_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc18_ || param1)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc17_ && this))
                     {
                        _loc3_ = §§pop();
                        §§push(_loc3_);
                     }
                     §§push(0);
                     if(!_loc17_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(_loc18_)
                           {
                              return;
                           }
                           addr123:
                           _loc2_.startY = §1!F§;
                        }
                        else
                        {
                           _loc2_.alpha = 0;
                           if(_loc18_)
                           {
                              _loc2_.currentTime = 0;
                              if(!(_loc17_ && _loc3_))
                              {
                                 _loc2_.§9t§ = _loc3_;
                                 _loc2_.x = §@m§ + this.§0!;§ * (Math.random() * 2 - 1);
                                 if(_loc18_)
                                 {
                                    addr106:
                                    _loc2_.y = §1!F§ + this.§^!3§ * (Math.random() * 2 - 1);
                                    _loc2_.startX = §@m§;
                                    if(!_loc18_)
                                    {
                                    }
                                    §§push(this.§5!M§);
                                    §§push(this.§'A§);
                                    if(!(_loc17_ && _loc2_))
                                    {
                                       addr137:
                                       §§push(Math.random() * 2);
                                       if(!_loc17_)
                                       {
                                          addr144:
                                          addr145:
                                          addr143:
                                          §§push(§§pop() + §§pop() * (§§pop() - 1));
                                          if(_loc18_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc4_:* = §§pop();
                                          §§push(this.§5!G§);
                                          if(_loc18_)
                                          {
                                             §§push(this.§+U§);
                                             if(!_loc17_)
                                             {
                                                §§push(Math.random() * 2);
                                                if(!(_loc17_ && _loc2_))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc17_ && _loc3_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc5_:* = §§pop();
                                          §§push(_loc2_);
                                          §§push(_loc5_);
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop() * Math.cos(_loc4_));
                                          }
                                          §§pop().velocityX = §§pop();
                                          if(!_loc17_)
                                          {
                                             §§push(_loc2_);
                                             §§push(_loc5_);
                                             if(!(_loc17_ && this))
                                             {
                                                §§push(§§pop() * -Math.sin(_loc4_));
                                             }
                                             §§pop().velocityY = §§pop();
                                             §§push(_loc2_);
                                             §§push(this.§7;§);
                                             if(_loc18_ || _loc2_)
                                             {
                                                §§push(this.§ if§);
                                                if(!_loc17_)
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
                                             §§pop().radius = §§pop();
                                             §§push(_loc2_);
                                             §§push(this.§7;§);
                                             if(_loc18_)
                                             {
                                                §§push(§§pop() / _loc3_);
                                             }
                                             §§pop().radiusDelta = §§pop();
                                             §§push(_loc2_);
                                             §§push(this.§5!M§);
                                             if(!_loc17_)
                                             {
                                                §§push(this.§'A§);
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
                                             §§pop().rotation = §§pop();
                                             §§push(_loc2_);
                                             §§push(this.§&P§);
                                             if(_loc18_ || _loc3_)
                                             {
                                                §§push(this.§!S§);
                                                if(!_loc17_)
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
                                          }
                                          _loc2_.radialAcceleration = this.§2!0§;
                                          _loc2_.tangentialAcceleration = this.§58§;
                                          §§push(Math.random() * 2);
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop() - 1);
                                             if(_loc18_)
                                             {
                                                addr314:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc6_:* = §§pop();
                                             §§push(this.§7! §);
                                             if(_loc18_)
                                             {
                                                §§push(this.§59§);
                                                if(_loc18_ || _loc3_)
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                   if(_loc18_)
                                                   {
                                                      addr333:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc18_ || this)
                                                      {
                                                         addr342:
                                                         §§push(Number(§§pop()));
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc17_ && param1))
                                                   {
                                                      if(!isNaN(this.§2'§))
                                                      {
                                                         §§push(this.§2'§);
                                                         if(_loc18_)
                                                         {
                                                            _loc8_ = Number(§§pop());
                                                            if(!isNaN(this.§[v§))
                                                            {
                                                               §§push(_loc8_);
                                                               §§push(this.§[v§);
                                                               if(_loc18_ || this)
                                                               {
                                                                  §§push(Math.random() * 2);
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc17_ && _loc3_))
                                                                        {
                                                                           _loc8_ = Number(§§pop() + §§pop());
                                                                           if(_loc18_)
                                                                           {
                                                                              addr408:
                                                                              §§push(_loc7_);
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 if(§§pop() < 0.1)
                                                                                 {
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(Number(0.1));
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr427:
                                                                                             §§push(_loc8_);
                                                                                             if(_loc17_ && _loc3_)
                                                                                             {
                                                                                             }
                                                                                             addr441:
                                                                                             _loc8_ = Number(§§pop());
                                                                                             §§push(_loc2_);
                                                                                             §§push(_loc7_);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() / texture.width);
                                                                                             }
                                                                                             §§pop().scaleX = §§pop();
                                                                                             §§push(_loc2_);
                                                                                             §§push(_loc8_);
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      addr466:
                                                                                                      §§push(§§pop() / _loc3_);
                                                                                                      if(_loc17_ && _loc3_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr477:
                                                                                                      §§pop().scaleDeltaX = §§pop();
                                                                                                      §§push(this.§%r§);
                                                                                                      §§push(this.§^p§);
                                                                                                      if(!(_loc17_ && param1))
                                                                                                      {
                                                                                                         addr490:
                                                                                                         §§push(§§pop() * _loc6_);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         addr494:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc9_:*;
                                                                                                      §§push(_loc9_ = §§pop());
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc10_:* = §§pop();
                                                                                                      if(!isNaN(this.§3!&§))
                                                                                                      {
                                                                                                         if(!(_loc17_ && this))
                                                                                                         {
                                                                                                            _loc10_ = Number(this.§3!&§);
                                                                                                            if(!isNaN(this.§48§))
                                                                                                            {
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  §§push(_loc10_);
                                                                                                                  §§push(this.§48§);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     §§push(Math.random() * 2);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                     }
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        _loc10_ = §§pop();
                                                                                                                        if(!(_loc17_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr556:
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(!(_loc17_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(0.1);
                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr572:
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc17_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr587:
                                                                                                                                       §§push(Number(0.1));
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                          addr585:
                                                                                                                                          §§push(_loc10_);
                                                                                                                                       }
                                                                                                                                       if(§§pop() < 0.1)
                                                                                                                                       {
                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(0.1);
                                                                                                                                             if(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                addr613:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                addr617:
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / texture.height);
                                                                                                                                                }
                                                                                                                                                §§pop().scaleY = §§pop();
                                                                                                                                                addr625:
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(!(_loc17_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr646:
                                                                                                                                                         §§push(§§pop() / _loc3_);
                                                                                                                                                         if(_loc18_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / texture.height);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§pop().scaleDeltaY = §§pop();
                                                                                                                                                      addr658:
                                                                                                                                                      var _loc11_:ColorArgb = _loc2_.colorArgb;
                                                                                                                                                      var _loc12_:ColorArgb = _loc2_.colorArgbDelta;
                                                                                                                                                      if(!(_loc17_ && this))
                                                                                                                                                      {
                                                                                                                                                         _loc11_.red = this.§43§.red;
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            _loc11_.green = this.§43§.green;
                                                                                                                                                            _loc11_.blue = this.§43§.blue;
                                                                                                                                                            _loc11_.alpha = this.§43§.alpha;
                                                                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§^Z§);
                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().red);
                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc17_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr730:
                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                              §§push(_loc11_.red);
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§^Z§.red);
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
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().red = §§pop();
                                                                                                                                                                              addr755:
                                                                                                                                                                              §§push(this.§^Z§);
                                                                                                                                                                              if(_loc18_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().green);
                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr770:
                                                                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                          §§push(_loc11_.green);
                                                                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§^Z§.green);
                                                                                                                                                                                             if(_loc18_ || this)
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
                                                                                                                                                                                          §§pop().green = §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§^Z§);
                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr810:
                                                                                                                                                                                          §§push(§§pop().blue);
                                                                                                                                                                                          if(!(_loc17_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr822:
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   §§push(_loc11_.blue);
                                                                                                                                                                                                   if(!(_loc17_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§^Z§.blue);
                                                                                                                                                                                                      if(!(_loc17_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Math.random() * 2);
                                                                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - 1);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().blue = §§pop();
                                                                                                                                                                                                   addr857:
                                                                                                                                                                                                   addr859:
                                                                                                                                                                                                   §§push(this.§^Z§.alpha);
                                                                                                                                                                                                   if(_loc17_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   var _loc13_:Number = §§pop();
                                                                                                                                                                                                   §§push(this.§?!I§.green);
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   var _loc14_:* = §§pop();
                                                                                                                                                                                                   §§push(this.§?!I§.blue);
                                                                                                                                                                                                   if(!(_loc17_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   var _loc15_:* = §§pop();
                                                                                                                                                                                                   §§push(this.§?!I§.alpha);
                                                                                                                                                                                                   if(!(_loc17_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   var _loc16_:* = §§pop();
                                                                                                                                                                                                   if(!(_loc17_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§"t§);
                                                                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().red);
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§"t§);
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().red);
                                                                                                                                                                                                                        §§push(Math.random() * 2);
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc13_ = §§pop() + §§pop() * (§§pop() - 1);
                                                                                                                                                                                                                           addr979:
                                                                                                                                                                                                                           §§push(this.§"t§);
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().green);
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                              if(!(_loc17_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§"t§);
                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().green);
                                                                                                                                                                                                                                             §§push(Math.random() * 2 - 1);
                                                                                                                                                                                                                                             if(!(_loc17_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc14_ = §§pop();
                                                                                                                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1035:
                                                                                                                                                                                                                                                         §§push(this.§"t§);
                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1040:
                                                                                                                                                                                                                                                            §§push(§§pop().blue);
                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                            if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1048:
                                                                                                                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1049:
                                                                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                                                                  if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§"t§);
                                                                                                                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().blue);
                                                                                                                                                                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1074:
                                                                                                                                                                                                                                                                           §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1080:
                                                                                                                                                                                                                                                                              §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                 if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1101:
                                                                                                                                                                                                                                                                                    §§push(this.§"t§.alpha);
                                                                                                                                                                                                                                                                                    if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1112:
                                                                                                                                                                                                                                                                                       if(§§pop() != 0)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1133:
                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                             §§push(this.§"t§.alpha);
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1126:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * (Math.random() * 2 - 1));
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             _loc16_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc11_.red);
                                                                                                                                                                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1153:
                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1156:
                                                                                                                                                                                                                                                                                                §§push(_loc12_);
                                                                                                                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc11_.green);
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1174);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1174:
                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1177:
                                                                                                                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc11_.blue);
                                                                                                                                                                                                                                                                                                      if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1209:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() / _loc3_);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc11_.alpha);
                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1233:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() / _loc3_);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                               §§goto(addr1235);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1233);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1209);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1235);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1177);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1153);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1133);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1235:
                                                                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1133);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1126);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1133);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1101);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1112);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1101);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1049);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1040);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1074);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1080);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1133);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1156);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1035);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1048);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1040);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1126);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1133);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1040);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1035);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr979);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1048);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1040);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1133);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr857);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr868:
                                                                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                §§push(_loc11_.alpha);
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§^Z§.alpha);
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Math.random() * 2);
                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().alpha = §§pop();
                                                                                                                                                                                                addr889:
                                                                                                                                                                                                §§push(this.§?!I§.red);
                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr857);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr889);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr868);
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr859);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr868);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr857);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr810);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr889);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr755);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr857);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr810);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr822);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr730);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr822);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr646);
                                                                                                                                             }
                                                                                                                                             §§goto(addr658);
                                                                                                                                          }
                                                                                                                                          §§goto(addr625);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr617);
                                                                                                                                 }
                                                                                                                                 §§goto(addr585);
                                                                                                                              }
                                                                                                                              §§goto(addr587);
                                                                                                                           }
                                                                                                                           §§goto(addr613);
                                                                                                                        }
                                                                                                                        §§goto(addr617);
                                                                                                                     }
                                                                                                                     §§goto(addr587);
                                                                                                                  }
                                                                                                                  §§goto(addr572);
                                                                                                               }
                                                                                                               §§goto(addr587);
                                                                                                            }
                                                                                                            §§goto(addr556);
                                                                                                         }
                                                                                                         §§goto(addr617);
                                                                                                      }
                                                                                                      §§goto(addr556);
                                                                                                   }
                                                                                                   §§goto(addr477);
                                                                                                   §§push(§§pop() / texture.width);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr466);
                                                                                             addr440:
                                                                                          }
                                                                                          addr437:
                                                                                          §§push(0.1);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§goto(addr440);
                                                                                          }
                                                                                          §§goto(addr441);
                                                                                       }
                                                                                       addr436:
                                                                                       if(§§pop() < 0.1)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr441);
                                                                                    }
                                                                                    §§goto(addr437);
                                                                                 }
                                                                                 §§goto(addr427);
                                                                              }
                                                                              §§goto(addr494);
                                                                           }
                                                                        }
                                                                        §§goto(addr466);
                                                                     }
                                                                  }
                                                                  §§goto(addr490);
                                                               }
                                                               §§goto(addr436);
                                                            }
                                                            §§goto(addr408);
                                                         }
                                                         §§goto(addr427);
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§goto(addr427);
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr342);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr123);
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr137);
               }
               §§goto(addr143);
            }
         }
         §§goto(addr144);
      }
      
      override protected function advanceParticle(param1:§61§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§9t§ - _loc3_.currentTime);
         if(!(_loc13_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc13_ && param1))
         {
            §§push(§§pop() > param2);
            if(_loc14_)
            {
               if(§§pop())
               {
                  §§push(Number(param2));
                  if(_loc14_)
                  {
                     addr80:
                     param2 = §§pop();
                     _loc3_.currentTime += param2;
                     if(_loc14_)
                     {
                        if(this.§8!E§ == this.§1b§)
                        {
                           §§push(!_loc3_.skipUpdate);
                           §§push(!_loc3_.skipUpdate);
                           if(!(_loc13_ && this))
                           {
                              if(!§§pop())
                              {
                                 if(_loc14_)
                                 {
                                    §§pop();
                                    §§push(!this.§6@§);
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       addr120:
                                       if(§§pop())
                                       {
                                          §§push(this.§6@§);
                                          if(_loc14_ || this)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc14_ || _loc3_)
                                                {
                                                   _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                   §§push(_loc3_);
                                                   §§push(_loc3_.radius);
                                                   if(_loc14_)
                                                   {
                                                      §§push(_loc3_.radiusDelta);
                                                      if(!_loc13_)
                                                      {
                                                         addr165:
                                                         §§push(§§pop() * param2);
                                                         if(_loc14_)
                                                         {
                                                            addr162:
                                                            §§push(§§pop() * 2);
                                                         }
                                                         §§pop().radius = §§pop() - §§pop();
                                                         if(!_loc13_)
                                                         {
                                                            §§goto(addr200);
                                                         }
                                                         §§goto(addr494);
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr625);
                                             }
                                             else
                                             {
                                                _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc3_);
                                                   §§push(_loc3_.radius);
                                                   if(_loc14_)
                                                   {
                                                      §§push(_loc3_.radiusDelta);
                                                      if(!(_loc13_ && this))
                                                      {
                                                         §§push(§§pop() * param2);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§pop().radius = §§pop();
                                                   if(!_loc13_)
                                                   {
                                                      addr200:
                                                      _loc3_.x = §@m§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                      _loc3_.y = §1!F§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                      §§push(_loc3_.radius);
                                                      if(!_loc13_)
                                                      {
                                                         if(§§pop() < this.§'!#§)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               _loc3_.currentTime = _loc3_.§9t§;
                                                               if(!(_loc13_ && this))
                                                               {
                                                                  addr694:
                                                                  §§push(!_loc3_.skipUpdate);
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr699:
                                                                     if(!§§pop())
                                                                     {
                                                                        addr701:
                                                                        §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           addr707:
                                                                           if(!this.§6@§)
                                                                           {
                                                                              if(this.§6@§)
                                                                              {
                                                                                 addr715:
                                                                                 param2 *= 2;
                                                                                 §§goto(addr712);
                                                                              }
                                                                              §§goto(addr718);
                                                                           }
                                                                           §§goto(addr930);
                                                                        }
                                                                        §§goto(addr801);
                                                                     }
                                                                     §§goto(addr707);
                                                                  }
                                                                  §§goto(addr701);
                                                                  addr242:
                                                               }
                                                               else
                                                               {
                                                                  addr678:
                                                                  _loc3_.y += _loc3_.velocityY * param2;
                                                                  if(_loc14_ || param2)
                                                                  {
                                                                     §§goto(addr694);
                                                                  }
                                                               }
                                                               §§goto(addr707);
                                                            }
                                                            else
                                                            {
                                                               addr484:
                                                               §§push(this.§6@§);
                                                               if(_loc14_ || _loc3_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr494:
                                                                     §§push(_loc3_);
                                                                     §§push(_loc3_.velocityX);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(2 * param2);
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           §§push(this.§4a§);
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 addr526:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                 }
                                                                                 §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    §§push(_loc3_.velocityY);
                                                                                    if(!(_loc13_ && this))
                                                                                    {
                                                                                       §§push(2 * param2);
                                                                                       if(_loc14_ || param1)
                                                                                       {
                                                                                          §§push(this.§>!§);
                                                                                          if(!(_loc13_ && this))
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr569:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   addr567:
                                                                                                   §§push(§§pop() + _loc11_);
                                                                                                }
                                                                                                §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                if(_loc14_ || param2)
                                                                                                {
                                                                                                   addr669:
                                                                                                   _loc3_.x += _loc3_.velocityX * param2;
                                                                                                   §§goto(addr678);
                                                                                                }
                                                                                                §§goto(addr734);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr567);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr569);
                                                                                 }
                                                                                 §§goto(addr694);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc3_);
                                                                     §§push(_loc3_.velocityX);
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(param2);
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§push(this.§4a§);
                                                                           if(_loc14_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!(_loc13_ && param1))
                                                                              {
                                                                                 addr620:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc13_ && param2))
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                 }
                                                                                 §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr625:
                                                                                    §§push(_loc3_);
                                                                                    §§push(_loc3_.velocityY);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(param2);
                                                                                       if(_loc14_ || param2)
                                                                                       {
                                                                                          §§push(this.§>!§);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(!(_loc13_ && _loc3_))
                                                                                             {
                                                                                                addr655:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                }
                                                                                                §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§goto(addr669);
                                                                                                }
                                                                                                §§goto(addr718);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr655);
                                                                                 }
                                                                                 §§goto(addr707);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr620);
                                                                  }
                                                               }
                                                               §§goto(addr701);
                                                            }
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      addr712:
                                                      if(!_loc13_)
                                                      {
                                                         addr718:
                                                         _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                         if(!(_loc13_ && this))
                                                         {
                                                            addr734:
                                                            _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                            if(_loc14_ || param1)
                                                            {
                                                               §§push(_loc3_.colorArgb);
                                                               if(!(_loc13_ && _loc3_))
                                                               {
                                                                  §§push(_loc3_.colorArgb);
                                                                  if(!(_loc13_ && param2))
                                                                  {
                                                                     §§push(§§pop().red);
                                                                     if(_loc14_ || _loc3_)
                                                                     {
                                                                        §§push(_loc3_.colorArgbDelta);
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§push(§§pop().red);
                                                                           if(_loc14_)
                                                                           {
                                                                              §§push(param2);
                                                                              if(!(_loc13_ && this))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc13_ && this))
                                                                                 {
                                                                                    §§pop().red = §§pop() + §§pop();
                                                                                    addr801:
                                                                                    §§push(_loc3_.colorArgb);
                                                                                    if(!(_loc13_ && this))
                                                                                    {
                                                                                       §§push(_loc3_.colorArgb);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          §§push(§§pop().green);
                                                                                          §§push(_loc3_.colorArgbDelta);
                                                                                          if(_loc14_ || _loc3_)
                                                                                          {
                                                                                             addr825:
                                                                                             §§push(§§pop().green);
                                                                                             §§push(param2);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                §§pop().green = §§pop() + §§pop() * §§pop();
                                                                                                §§push(_loc3_.colorArgb);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr835:
                                                                                                   §§push(_loc3_.colorArgb);
                                                                                                   if(_loc14_ || param2)
                                                                                                   {
                                                                                                      addr844:
                                                                                                      §§push(§§pop().blue);
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         §§push(_loc3_.colorArgbDelta);
                                                                                                         if(!(_loc13_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop().blue);
                                                                                                            §§push(param2);
                                                                                                            if(_loc14_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  addr883:
                                                                                                                  addr868:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§pop().blue = §§pop();
                                                                                                                     addr879:
                                                                                                                     §§push(_loc3_.colorArgb);
                                                                                                                     §§push(_loc3_.colorArgb.alpha);
                                                                                                                     §§push(_loc3_.colorArgbDelta.alpha);
                                                                                                                  }
                                                                                                                  §§pop().alpha = §§pop();
                                                                                                                  _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                     _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                     addr896:
                                                                                                                     if(_loc14_ || param1)
                                                                                                                     {
                                                                                                                        §§goto(addr918);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr930);
                                                                                                               }
                                                                                                               addr881:
                                                                                                               §§goto(addr883);
                                                                                                               §§push(§§pop() + §§pop() * param2);
                                                                                                            }
                                                                                                            §§goto(addr881);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr879);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr881);
                                                                                          }
                                                                                          §§goto(addr879);
                                                                                       }
                                                                                       §§goto(addr844);
                                                                                    }
                                                                                    §§goto(addr879);
                                                                                 }
                                                                                 §§goto(addr825);
                                                                              }
                                                                              §§goto(addr881);
                                                                           }
                                                                           §§goto(addr868);
                                                                        }
                                                                        §§goto(addr879);
                                                                     }
                                                                     §§goto(addr883);
                                                                  }
                                                                  §§goto(addr844);
                                                               }
                                                               §§goto(addr835);
                                                            }
                                                            §§goto(addr930);
                                                         }
                                                      }
                                                      addr918:
                                                      _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                      if(!(_loc13_ && this))
                                                      {
                                                         addr930:
                                                         §§push(_loc3_);
                                                         §§push(_loc3_.skipUpdate);
                                                         if(_loc14_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         §§pop().skipUpdate = §§pop();
                                                         §§goto(addr937);
                                                      }
                                                      addr937:
                                                      return;
                                                   }
                                                   addr399:
                                                   §§push(_loc9_);
                                                   if(!_loc13_)
                                                   {
                                                      addr403:
                                                      _loc11_ = §§pop();
                                                      if(!_loc13_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(_loc14_)
                                                         {
                                                            addr413:
                                                            _loc8_ = §§pop() * _loc3_.radialAcceleration;
                                                            addr409:
                                                            if(_loc14_)
                                                            {
                                                               §§push(_loc9_);
                                                               §§push(_loc3_.radialAcceleration);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(Number(§§pop() * §§pop()));
                                                                  if(_loc14_ || this)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc14_)
                                                                     {
                                                                        addr433:
                                                                        _loc12_ = _loc10_;
                                                                        if(!(_loc13_ && _loc3_))
                                                                        {
                                                                           addr444:
                                                                           §§push(-_loc11_ * _loc3_.tangentialAcceleration);
                                                                           if(!(_loc13_ && this))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr472:
                                                                              §§push(_loc12_ * _loc3_.tangentialAcceleration);
                                                                              if(!(_loc13_ && param1))
                                                                              {
                                                                                 addr481:
                                                                                 _loc11_ = §§pop();
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§goto(addr484);
                                                                                 }
                                                                                 §§goto(addr707);
                                                                              }
                                                                              §§goto(addr715);
                                                                           }
                                                                           §§goto(addr883);
                                                                        }
                                                                        §§goto(addr930);
                                                                     }
                                                                     §§goto(addr678);
                                                                  }
                                                                  §§goto(addr715);
                                                               }
                                                               §§goto(addr472);
                                                            }
                                                         }
                                                         §§goto(addr715);
                                                      }
                                                      §§goto(addr625);
                                                   }
                                                   §§goto(addr444);
                                                   §§goto(addr883);
                                                }
                                                §§goto(addr433);
                                             }
                                          }
                                          §§goto(addr699);
                                       }
                                       §§goto(addr694);
                                    }
                                    else
                                    {
                                       addr279:
                                       if(§§pop())
                                       {
                                          §§push(_loc3_.x - _loc3_.startX);
                                          if(_loc14_)
                                          {
                                             _loc5_ = §§pop();
                                             if(!(_loc13_ && _loc3_))
                                             {
                                                §§push(_loc3_.y - _loc3_.startY);
                                                if(_loc14_)
                                                {
                                                   addr304:
                                                   _loc6_ = §§pop();
                                                   §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                   §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                   if(_loc14_ || param1)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(!(_loc13_ && this))
                                                      {
                                                         if(§§pop() < 0.01)
                                                         {
                                                            §§push(0.01);
                                                            if(_loc14_ || this)
                                                            {
                                                               _loc7_ = Number(§§pop());
                                                               if(_loc14_ || this)
                                                               {
                                                                  addr350:
                                                                  §§push(_loc5_);
                                                                  if(!(_loc13_ && param2))
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(_loc14_)
                                                                     {
                                                                        addr361:
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!_loc13_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           §§push(_loc6_);
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(§§pop() / _loc7_);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc13_ && param1))
                                                                                 {
                                                                                    addr381:
                                                                                    _loc9_ = §§pop();
                                                                                    §§push(_loc8_);
                                                                                    if(_loc14_ || _loc3_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc14_ || this)
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          §§goto(addr399);
                                                                                       }
                                                                                       §§goto(addr472);
                                                                                    }
                                                                                    §§goto(addr409);
                                                                                 }
                                                                                 §§goto(addr715);
                                                                              }
                                                                              §§goto(addr444);
                                                                           }
                                                                           §§goto(addr409);
                                                                        }
                                                                        §§goto(addr481);
                                                                     }
                                                                     §§goto(addr444);
                                                                  }
                                                                  §§goto(addr413);
                                                               }
                                                               §§goto(addr399);
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      §§goto(addr413);
                                                   }
                                                   §§goto(addr361);
                                                }
                                                §§goto(addr403);
                                             }
                                             §§goto(addr494);
                                          }
                                          §§goto(addr403);
                                       }
                                    }
                                    §§goto(addr669);
                                 }
                                 §§goto(addr707);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr699);
                        }
                        else
                        {
                           §§push(_loc3_.skipUpdate);
                           if(!_loc13_)
                           {
                              §§push(!§§pop());
                              if(!(_loc13_ && param1))
                              {
                                 §§push(§§pop());
                                 if(!_loc13_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc14_ || param1)
                                       {
                                          §§pop();
                                          if(!(_loc13_ && param2))
                                          {
                                             §§push(this.§6@§);
                                             if(_loc14_)
                                             {
                                                §§goto(addr279);
                                                §§push(!§§pop());
                                             }
                                             §§goto(addr707);
                                          }
                                          §§goto(addr896);
                                       }
                                       §§goto(addr707);
                                    }
                                    §§goto(addr279);
                                 }
                                 §§goto(addr699);
                              }
                           }
                        }
                        §§goto(addr701);
                     }
                     §§goto(addr433);
                  }
                  §§goto(addr304);
               }
               else
               {
                  §§push(Number(_loc4_));
                  if(_loc14_ || param2)
                  {
                     §§goto(addr80);
                  }
               }
               §§goto(addr403);
            }
            §§goto(addr120);
         }
         §§goto(addr403);
      }
      
      private function §,2§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§0!;§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         }
         this.§^!3§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         if(!_loc3_)
         {
            this.§4a§ = parseFloat(param1.gravity.attribute("x"));
            if(!_loc3_)
            {
               this.§>!§ = parseFloat(param1.gravity.attribute("y"));
               if(!_loc3_)
               {
                  this.§8!E§ = this.§+n§(param1.emitterType);
                  if(_loc4_ || _loc3_)
                  {
                     this.§07§ = this.§+n§(param1.maxParticles);
                     this.§<n§ = Math.max(0.01,this.§&§(param1.particleLifeSpan));
                     if(_loc4_ || _loc3_)
                     {
                        this.§!t§ = this.§&§(param1.particleLifespanVariance);
                        if(_loc4_)
                        {
                           addr100:
                           if(param1.particleInterval.length() == 1)
                           {
                              this.§6C§ = this.§&§(param1.particleInterval);
                              addr111:
                           }
                           else
                           {
                              this.§6C§ = 0;
                           }
                           this.§7! § = this.§&§(param1.startParticleSize);
                           §§push(this);
                           §§push(this.§7! §);
                           if(!(_loc3_ && param1))
                           {
                              §§push(param2.height);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_ || param2)
                                 {
                                    addr145:
                                    §§push(§§pop() / param2.width);
                                 }
                                 §§pop().§%r§ = §§pop();
                                 this.§59§ = this.§&§(param1.startParticleSizeVariance);
                                 §§push(this);
                                 §§push(this.§59§);
                                 if(_loc4_)
                                 {
                                    §§push(param2.height);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          addr167:
                                          §§push(§§pop() / param2.width);
                                       }
                                       §§pop().§^p§ = §§pop();
                                       if(param1.startParticleSizeX.length() == 1)
                                       {
                                          if(!(_loc3_ && param2))
                                          {
                                             this.§7! § = this.§&§(param1.startParticleSizeX);
                                             if(_loc4_)
                                             {
                                                addr189:
                                                if(param1.startParticleSizeVarianceX.length() == 1)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      this.§59§ = this.§&§(param1.startParticleSizeVarianceX);
                                                      if(_loc4_)
                                                      {
                                                         addr204:
                                                         if(param1.startParticleSizeY.length() == 1)
                                                         {
                                                            this.§%r§ = this.§&§(param1.startParticleSizeY);
                                                         }
                                                         if(param1.startParticleSizeVarianceY.length() == 1)
                                                         {
                                                            this.§^p§ = this.§&§(param1.startParticleSizeVarianceY);
                                                            if(_loc4_)
                                                            {
                                                               addr228:
                                                               if(param1.finishParticleSize.length() == 1)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr240:
                                                                     this.§2'§ = this.§&§(param1.finishParticleSize);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§2'§);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§push(param2.height);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr268:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(param2.width);
                                                                              }
                                                                              §§pop().§3!&§ = §§pop();
                                                                              if(param1.FinishParticleSizeVariance.length() == 1)
                                                                              {
                                                                                 addr284:
                                                                                 this.§[v§ = this.§&§(param1.FinishParticleSizeVariance);
                                                                                 §§push(this);
                                                                                 §§push(this.§[v§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(param2.height);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc3_ && param2))
                                                                                       {
                                                                                          addr309:
                                                                                          §§push(§§pop() / param2.width);
                                                                                       }
                                                                                       §§pop().§48§ = §§pop();
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          addr318:
                                                                                          if(param1.finishParticleSizeX.length() == 1)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                this.§2'§ = this.§&§(param1.finishParticleSizeX);
                                                                                                addr331:
                                                                                                if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                {
                                                                                                   if(!(_loc3_ && param1))
                                                                                                   {
                                                                                                      this.§[v§ = this.§&§(param1.FinishParticleSizeVarianceX);
                                                                                                      addr349:
                                                                                                      if(param1.finishParticleSizeY.length() == 1)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            this.§3!&§ = this.§&§(param1.finishParticleSizeY);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               addr364:
                                                                                                               if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                               {
                                                                                                                  addr369:
                                                                                                                  this.§48§ = this.§&§(param1.FinishParticleSizeVarianceY);
                                                                                                               }
                                                                                                               this.§5!M§ = deg2rad(this.§&§(param1.angle));
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  this.§'A§ = deg2rad(this.§&§(param1.angleVariance));
                                                                                                                  addr393:
                                                                                                                  this.§5!G§ = this.§&§(param1.speed);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     this.§+U§ = this.§&§(param1.speedVariance);
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr414:
                                                                                                                        this.§2!0§ = this.§&§(param1.radialAcceleration);
                                                                                                                        if(!(_loc3_ && param2))
                                                                                                                        {
                                                                                                                           addr427:
                                                                                                                           this.§58§ = this.§&§(param1.tangentialAcceleration);
                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                           {
                                                                                                                              this.§7;§ = this.§&§(param1.maxRadius);
                                                                                                                              addr446:
                                                                                                                              this.§ if§ = this.§&§(param1.maxRadiusVariance);
                                                                                                                              this.§'!#§ = this.§&§(param1.minRadius);
                                                                                                                              this.§&P§ = deg2rad(this.§&§(param1.rotatePerSecond));
                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                              {
                                                                                                                                 this.§!S§ = deg2rad(this.§&§(param1.rotatePerSecondVariance));
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    addr483:
                                                                                                                                    this.§43§ = this.§+!#§(param1.startColor);
                                                                                                                                    if(!(_loc3_ && param1))
                                                                                                                                    {
                                                                                                                                       addr496:
                                                                                                                                       this.§^Z§ = this.§+!#§(param1.startColorVariance);
                                                                                                                                       if(_loc4_ || param2)
                                                                                                                                       {
                                                                                                                                          this.§?!I§ = this.§+!#§(param1.finishColor);
                                                                                                                                       }
                                                                                                                                       §§goto(addr523);
                                                                                                                                    }
                                                                                                                                    this.§"t§ = this.§+!#§(param1.finishColorVariance);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr523:
                                                                                                                                       §@s§ = this.§>!6§(param1.blendFuncSource);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §"k§ = this.§>!6§(param1.blendFuncDestination);
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §#E§ = this.§&!F§(param1.textureSmoothing);
                                                                                                                                             addr555:
                                                                                                                                             if(param1.emissionVariance.length == 1)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr562:
                                                                                                                                                   §]!?§ = this.§&§(param1.emissionVariance);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr568);
                                                                                                                                       }
                                                                                                                                       addr568:
                                                                                                                                       return;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr562);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr483);
                                                                                                                        }
                                                                                                                        §§goto(addr555);
                                                                                                                     }
                                                                                                                     §§goto(addr446);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr427);
                                                                                                            }
                                                                                                            §§goto(addr393);
                                                                                                         }
                                                                                                         §§goto(addr496);
                                                                                                      }
                                                                                                      §§goto(addr364);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr349);
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                       §§goto(addr446);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              §§goto(addr318);
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     §§goto(addr414);
                                                                  }
                                                                  §§goto(addr555);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   §§goto(addr284);
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr496);
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr189);
                                    }
                                 }
                                 §§goto(addr167);
                              }
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr318);
                     }
                     §§goto(addr284);
                  }
                  §§goto(addr100);
               }
               §§goto(addr562);
            }
            §§goto(addr240);
         }
         §§goto(addr111);
      }
      
      protected function §+n§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §&§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §"D§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §+!#§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc4_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            if(_loc4_)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               if(_loc4_)
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  if(_loc4_ || param1)
                  {
                     addr75:
                     _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                  }
               }
               §§goto(addr75);
            }
            return _loc2_;
         }
         §§goto(addr75);
      }
      
      protected function §>!6§(param1:XMLList) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§+n§(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || param1)
         {
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        §§push(0);
                        if(!(_loc4_ || param1))
                        {
                           addr131:
                        }
                     }
                     else if(1 === _loc3_)
                     {
                        §§goto(addr131);
                        §§push(1);
                     }
                     else
                     {
                        if(768 === _loc3_)
                        {
                           §§push(!(_loc5_ && param1) ? 2 : 8);
                        }
                        else
                        {
                           §§push(769);
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr243:
                                    switch(3)
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
                                 }
                                 else
                                 {
                                    addr218:
                                    §§goto(addr243);
                                    §§push(7);
                                 }
                                 §§goto(addr243);
                              }
                              else
                              {
                                 §§push(770);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    addr172:
                                    if(§§pop() === _loc3_)
                                    {
                                       §§goto(addr243);
                                       §§push(4);
                                    }
                                    else
                                    {
                                       §§push(771);
                                    }
                                    §§goto(addr243);
                                 }
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr243);
                                          §§push(5);
                                       }
                                       §§goto(addr243);
                                    }
                                    else
                                    {
                                       §§push(772);
                                       §§push(_loc3_);
                                       if(_loc4_ || param1)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr243);
                                             §§push(6);
                                          }
                                          else
                                          {
                                             §§push(773);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(_loc3_);
                                                if(_loc4_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr218);
                                                   }
                                                   else
                                                   {
                                                      §§push(774);
                                                      if(_loc4_)
                                                      {
                                                         addr223:
                                                         if(§§pop() === _loc3_)
                                                         {
                                                            §§goto(addr225);
                                                         }
                                                         else
                                                         {
                                                            addr229:
                                                            if(775 === _loc3_)
                                                            {
                                                               addr230:
                                                               §§push(9);
                                                               if(_loc4_ || param1)
                                                               {
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr243);
                                                               §§push(10);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr223);
                                    }
                                 }
                                 §§goto(addr223);
                              }
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr225);
                     }
                     §§goto(addr243);
                  }
                  §§goto(addr229);
               }
               §§goto(addr223);
            }
            §§goto(addr225);
         }
         §§goto(addr243);
      }
      
      protected function §&!F§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§"D§(param1));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(§ case§.§@§);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc4_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           if(_loc4_)
                           {
                              addr67:
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§ case§.§ 6§);
                                    if(_loc4_)
                                    {
                                       addr82:
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc3_ && this))
                                       {
                                          addr90:
                                          if(!§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§pop();
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc4_)
                                                   {
                                                      addr118:
                                                      if(§§pop() == § case§.NONE)
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            addr126:
                                                            §§push(_loc2_);
                                                            if(_loc4_ || this)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr135:
                                                            §§push(§ case§.§@§);
                                                         }
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr135);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr118);
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr67);
               }
               §§goto(addr82);
            }
            §§goto(addr118);
         }
         §§goto(addr126);
      }
   }
}

import §`6§.§61§;

class PDParticle extends §61§
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
