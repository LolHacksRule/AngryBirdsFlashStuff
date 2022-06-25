package §>!H§
{
   import §,G§.deg2rad;
   import §7!=§.§<V§;
   import §7!=§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §;N§
   {
       
      
      private const §"U§:int = 0;
      
      private const §=!E§:int = 1;
      
      private var §7t§:Number;
      
      private var §<X§:int;
      
      private var §[!0§:Number;
      
      private var §2#§:Number;
      
      private var §8@§:int;
      
      private var §?A§:Number;
      
      private var §0,§:Number;
      
      private var § get§:Number;
      
      private var §7D§:Number;
      
      private var §`l§:Number;
      
      private var §in§:Number;
      
      private var § h§:Number;
      
      private var §30§:Number;
      
      private var §7K§:Number;
      
      private var §7!>§:Number;
      
      private var § U§:Number;
      
      private var §^Z§:Number;
      
      private var §!b§:Number;
      
      private var §#A§:Number;
      
      private var §3E§:Number;
      
      private var §>G§:Number;
      
      private var §'k§:Number;
      
      private var §>0§:Number;
      
      private var §"!$§:Number;
      
      private var §;L§:Number;
      
      private var §&=§:Number;
      
      private var §-!6§:Number;
      
      private var §<!2§:Number;
      
      private var §^'§:Number;
      
      private var §7S§:Number;
      
      private var §-^§:Number;
      
      private var §1M§:ColorArgb;
      
      private var §'!H§:ColorArgb;
      
      private var §%!F§:ColorArgb;
      
      private var § !§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.§,=§(param1,param2);
         }
         §§push(this.§8@§);
         §§push(this.§?A§);
         if(_loc4_ || this)
         {
            §§push(§§pop() + this.§ get§);
         }
         §§push(§§pop() / §§pop());
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            super(param2,_loc3_,this.§8@§,§5d§,§7&§);
            if(_loc4_)
            {
               §7M§ = false;
            }
         }
      }
      
      public function get §>m§() : int
      {
         return this.§8@§;
      }
      
      override protected function createParticle() : §<J§
      {
         return new PDParticle();
      }
      
      private function get §4r§() : Boolean
      {
         return this.§>m§ >= 20;
      }
      
      override protected function initParticle(param1:§<J§) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1301
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override protected function advanceParticle(param1:§<J§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§2S§ - _loc3_.currentTime);
         if(_loc14_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push((_loc4_ = §§pop()) > param2);
         if(!_loc13_)
         {
            if(§§pop())
            {
               if(_loc14_)
               {
                  §§push(Number(param2));
                  if(_loc14_)
                  {
                     addr70:
                     §§push(Number(§§pop()));
                     if(_loc14_)
                     {
                        param2 = §§pop();
                        if(!(_loc13_ && param1))
                        {
                           _loc3_.currentTime += param2;
                           if(_loc14_)
                           {
                              if(this.§<X§ == this.§=!E§)
                              {
                                 if(!_loc13_)
                                 {
                                    §§push(_loc3_.skipUpdate);
                                    if(_loc14_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc14_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc13_)
                                          {
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                if(!(_loc13_ && this))
                                                {
                                                   addr115:
                                                   §§push(this.§4r§);
                                                   if(_loc14_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc14_ || param1)
                                                      {
                                                         addr127:
                                                         if(§§pop())
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               addr132:
                                                               if(this.§4r§)
                                                               {
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                     if(_loc14_ || _loc3_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        §§push(_loc3_.radius);
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(_loc3_.radiusDelta);
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(§§pop() * param2);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(§§pop() * 2);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§pop().radius = §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           addr200:
                                                                           _loc3_.x = §0=§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr213:
                                                                              _loc3_.y = §9E§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                              addr224:
                                                                              §§push(_loc3_.radius);
                                                                              if(!(_loc13_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§^'§);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       _loc3_.currentTime = _loc3_.§2S§;
                                                                                       addr698:
                                                                                       §§push(_loc3_.skipUpdate);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr702:
                                                                                          §§push(!§§pop());
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr705:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr707:
                                                                                                §§pop();
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr710:
                                                                                                   §§push(!this.§4r§);
                                                                                                   if(_loc14_ || param2)
                                                                                                   {
                                                                                                      addr720:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            addr725:
                                                                                                            if(this.§4r§)
                                                                                                            {
                                                                                                               addr726:
                                                                                                               §§push(param2);
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  addr732:
                                                                                                                  param2 = Number(§§pop() * 2);
                                                                                                                  if(_loc14_ || param1)
                                                                                                                  {
                                                                                                                     addr740:
                                                                                                                     _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                     _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                     §§push(_loc3_.colorArgb);
                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().red);
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.colorArgbDelta);
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().red);
                                                                                                                                 §§push(param2);
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                    if(_loc14_ || param2)
                                                                                                                                    {
                                                                                                                                       §§pop().red = §§pop();
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          addr799:
                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.colorArgb);
                                                                                                                                             if(_loc14_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().green);
                                                                                                                                                §§push(_loc3_.colorArgbDelta);
                                                                                                                                                if(_loc14_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().green);
                                                                                                                                                   §§push(param2);
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      addr831:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc14_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().green = §§pop() + §§pop();
                                                                                                                                                         §§push(_loc3_.colorArgb);
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            addr845:
                                                                                                                                                            §§push(_loc3_.colorArgb);
                                                                                                                                                            if(_loc14_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr855:
                                                                                                                                                               §§push(§§pop().blue);
                                                                                                                                                               §§push(_loc3_.colorArgbDelta);
                                                                                                                                                               if(!(_loc13_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().blue);
                                                                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param2);
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr894:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              addr886:
                                                                                                                                                                              §§pop().blue = §§pop();
                                                                                                                                                                              addr891:
                                                                                                                                                                              §§push(_loc3_.colorArgb);
                                                                                                                                                                              §§push(_loc3_.colorArgb.alpha);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc3_.colorArgbDelta.alpha);
                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr899);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr898:
                                                                                                                                                                     addr899:
                                                                                                                                                                     §§pop().alpha = §§pop() + §§pop();
                                                                                                                                                                     addr901:
                                                                                                                                                                     _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        addr918:
                                                                                                                                                                        _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                        §§goto(addr923);
                                                                                                                                                                     }
                                                                                                                                                                     addr923:
                                                                                                                                                                     _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                     addr928:
                                                                                                                                                                     _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     §§push(_loc3_.skipUpdate);
                                                                                                                                                                     if(_loc14_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().skipUpdate = §§pop();
                                                                                                                                                                     return;
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr898);
                                                                                                                                                                  §§push(param2);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr894);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr891);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr894);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr898);
                                                                                                                                                }
                                                                                                                                                §§goto(addr894);
                                                                                                                                             }
                                                                                                                                             §§goto(addr891);
                                                                                                                                          }
                                                                                                                                          §§goto(addr845);
                                                                                                                                       }
                                                                                                                                       §§goto(addr923);
                                                                                                                                    }
                                                                                                                                    §§goto(addr886);
                                                                                                                                 }
                                                                                                                                 §§goto(addr831);
                                                                                                                              }
                                                                                                                              §§goto(addr894);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr855);
                                                                                                                     }
                                                                                                                     §§goto(addr845);
                                                                                                                  }
                                                                                                                  §§goto(addr901);
                                                                                                               }
                                                                                                               §§goto(addr732);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr740);
                                                                                                      }
                                                                                                      §§goto(addr923);
                                                                                                   }
                                                                                                   §§goto(addr725);
                                                                                                }
                                                                                                §§goto(addr799);
                                                                                             }
                                                                                             §§goto(addr720);
                                                                                          }
                                                                                          §§goto(addr707);
                                                                                       }
                                                                                       §§goto(addr705);
                                                                                       addr242:
                                                                                    }
                                                                                    §§goto(addr242);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr340:
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       addr343:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          §§push(_loc6_ / _loc7_);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                addr355:
                                                                                                _loc9_ = §§pop();
                                                                                                if(!(_loc13_ && param2))
                                                                                                {
                                                                                                   addr363:
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr367:
                                                                                                      _loc10_ = §§pop();
                                                                                                      §§push(_loc9_);
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            _loc11_ = §§pop();
                                                                                                            if(_loc14_ || this)
                                                                                                            {
                                                                                                               addr382:
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc14_ || _loc3_)
                                                                                                               {
                                                                                                                  addr390:
                                                                                                                  §§push(_loc3_.radialAcceleration);
                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                  {
                                                                                                                     addr399:
                                                                                                                     _loc8_ = Number(§§pop() * §§pop());
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr410:
                                                                                                                        §§push(_loc3_.radialAcceleration);
                                                                                                                        if(_loc14_ || param2)
                                                                                                                        {
                                                                                                                           addr420:
                                                                                                                           §§push(Number(§§pop() * §§pop()));
                                                                                                                           if(_loc14_ || this)
                                                                                                                           {
                                                                                                                              _loc9_ = §§pop();
                                                                                                                              if(_loc14_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(_loc10_);
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    addr439:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                       {
                                                                                                                                          addr451:
                                                                                                                                          §§push(-_loc11_ * _loc3_.tangentialAcceleration);
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             addr468:
                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                             addr457:
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                if(_loc14_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr479:
                                                                                                                                                   §§push(Number(§§pop() * _loc3_.tangentialAcceleration));
                                                                                                                                                   if(!(_loc13_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr490:
                                                                                                                                                      _loc11_ = §§pop();
                                                                                                                                                      if(!(_loc13_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr500:
                                                                                                                                                         if(this.§4r§)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            §§push(_loc3_.velocityX);
                                                                                                                                                            if(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               §§push(2 * param2);
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§>G§);
                                                                                                                                                                  if(!(_loc13_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        addr529:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           addr527:
                                                                                                                                                                           §§push(§§pop() + _loc10_);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                        if(!(_loc13_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           §§push(_loc3_.velocityY);
                                                                                                                                                                           if(_loc14_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(2 * param2);
                                                                                                                                                                              if(_loc14_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§'k§);
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr571:
                                                                                                                                                                                       addr572:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr569:
                                                                                                                                                                                          §§push(§§pop() + _loc11_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                       _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                       if(_loc14_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr678:
                                                                                                                                                                                          _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                                                             §§goto(addr698);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr923);
                                                                                                                                                                                          addr591:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr928);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr569);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr571);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr572);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr726);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr527);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr529);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            §§push(_loc3_.velocityX);
                                                                                                                                                            if(!(_loc13_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(param2);
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§>G§);
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr622:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           addr627:
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           §§push(_loc3_.velocityY);
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param2);
                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§'k§);
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                    if(_loc14_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr658:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc14_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr656:
                                                                                                                                                                                          §§push(§§pop() + _loc11_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr662:
                                                                                                                                                                                          _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr678);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr923);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr710);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr656);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr658);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr725);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr622);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr918);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr732);
                                                                                                                                             }
                                                                                                                                             §§goto(addr726);
                                                                                                                                          }
                                                                                                                                          §§goto(addr490);
                                                                                                                                       }
                                                                                                                                       §§goto(addr918);
                                                                                                                                    }
                                                                                                                                    §§goto(addr479);
                                                                                                                                 }
                                                                                                                                 §§goto(addr451);
                                                                                                                              }
                                                                                                                              §§goto(addr662);
                                                                                                                           }
                                                                                                                           §§goto(addr479);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr479);
                                                                                                               }
                                                                                                               §§goto(addr439);
                                                                                                            }
                                                                                                            §§goto(addr627);
                                                                                                         }
                                                                                                         §§goto(addr732);
                                                                                                      }
                                                                                                      §§goto(addr457);
                                                                                                   }
                                                                                                   §§goto(addr468);
                                                                                                }
                                                                                                §§goto(addr740);
                                                                                             }
                                                                                             §§goto(addr451);
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       §§goto(addr479);
                                                                                    }
                                                                                    §§goto(addr420);
                                                                                 }
                                                                              }
                                                                              §§goto(addr420);
                                                                           }
                                                                           §§goto(addr918);
                                                                        }
                                                                     }
                                                                     §§goto(addr224);
                                                                  }
                                                                  §§goto(addr710);
                                                               }
                                                               else
                                                               {
                                                                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                  §§push(_loc3_);
                                                                  §§push(_loc3_.radius);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(_loc3_.radiusDelta);
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(§§pop() * param2);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                                  §§pop().radius = §§pop();
                                                               }
                                                               §§goto(addr200);
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                         §§goto(addr698);
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                   else
                                                   {
                                                      addr245:
                                                      §§push(!§§pop());
                                                      §§push(!§§pop());
                                                      if(!(_loc13_ && param2))
                                                      {
                                                         addr254:
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            §§push(!this.§4r§);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            §§push(_loc3_.x - _loc3_.startX);
                                                            if(!_loc13_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc14_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  §§push(Number(_loc3_.y - _loc3_.startY));
                                                                  if(_loc14_ || param2)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                     §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        if(_loc14_ || this)
                                                                        {
                                                                           addr311:
                                                                           §§push(0.01);
                                                                           if(_loc14_)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 §§push(0.01);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc14_ || _loc3_)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       if(_loc14_ || this)
                                                                                       {
                                                                                          addr334:
                                                                                          §§push(_loc5_);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§goto(addr340);
                                                                                             }
                                                                                             §§goto(addr420);
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       §§goto(addr571);
                                                                                    }
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 §§goto(addr451);
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§goto(addr468);
                                                                     }
                                                                     §§goto(addr399);
                                                                  }
                                                                  §§goto(addr343);
                                                               }
                                                               §§goto(addr311);
                                                            }
                                                            §§goto(addr410);
                                                         }
                                                         §§goto(addr678);
                                                      }
                                                   }
                                                   §§goto(addr705);
                                                }
                                                §§goto(addr363);
                                             }
                                             §§goto(addr127);
                                          }
                                          §§goto(addr254);
                                       }
                                       §§goto(addr710);
                                    }
                                    §§goto(addr702);
                                 }
                                 §§goto(addr115);
                              }
                              else
                              {
                                 §§push(_loc3_.skipUpdate);
                              }
                              §§goto(addr245);
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr591);
                     }
                     §§goto(addr479);
                  }
                  §§goto(addr451);
               }
               §§goto(addr918);
            }
            else
            {
               §§push(Number(_loc4_));
               if(!_loc13_)
               {
                  §§goto(addr70);
               }
            }
            §§goto(addr343);
         }
         §§goto(addr500);
      }
      
      private function §,=§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.§[!0§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§2#§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§>G§ = parseFloat(param1.gravity.attribute("x"));
         this.§'k§ = parseFloat(param1.gravity.attribute("y"));
         this.§<X§ = this.§`!1§(param1.emitterType);
         if(!_loc4_)
         {
            this.§8@§ = this.§`!1§(param1.maxParticles);
            this.§?A§ = Math.max(0.01,this.§@[§(param1.particleLifeSpan));
            this.§0,§ = this.§@[§(param1.particleLifespanVariance);
            if(param1.particleInterval.length() == 1)
            {
               this.§ get§ = this.§@[§(param1.particleInterval);
               addr94:
               this.§7D§ = this.§@[§(param1.startParticleSize);
               if(_loc3_)
               {
                  §§push(this);
                  §§push(this.§7D§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(param2.height);
                     if(!(_loc4_ && param2))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           addr126:
                           §§push(§§pop() / param2.width);
                        }
                        §§pop().§in§ = §§pop();
                        this.§`l§ = this.§@[§(param1.startParticleSizeVariance);
                        if(_loc3_)
                        {
                           §§push(this);
                           §§push(this.§`l§);
                           if(_loc3_ || param2)
                           {
                              §§push(param2.height);
                              if(_loc3_)
                              {
                                 addr161:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(param2.width);
                                 }
                                 §§pop().§ h§ = §§pop();
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(param1.startParticleSizeX.length() == 1)
                                    {
                                       if(_loc3_)
                                       {
                                          addr176:
                                          this.§7D§ = this.§@[§(param1.startParticleSizeX);
                                          addr182:
                                          if(param1.startParticleSizeVarianceX.length() == 1)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.§`l§ = this.§@[§(param1.startParticleSizeVarianceX);
                                                if(!_loc4_)
                                                {
                                                   addr202:
                                                   if(param1.startParticleSizeY.length() == 1)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         addr214:
                                                         this.§in§ = this.§@[§(param1.startParticleSizeY);
                                                         addr220:
                                                         if(param1.startParticleSizeVarianceY.length() == 1)
                                                         {
                                                            this.§ h§ = this.§@[§(param1.startParticleSizeVarianceY);
                                                            if(!_loc4_)
                                                            {
                                                               addr233:
                                                               if(param1.finishParticleSize.length() == 1)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     this.§30§ = this.§@[§(param1.finishParticleSize);
                                                                     addr251:
                                                                     §§push(this);
                                                                     §§push(this.§30§);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(param2.height);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr281:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              §§push(param2.width);
                                                                           }
                                                                           §§pop().§7!>§ = §§pop();
                                                                           if(param1.FinishParticleSizeVariance.length() == 1)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 this.§7K§ = this.§@[§(param1.FinishParticleSizeVariance);
                                                                                 §§push(this);
                                                                                 §§push(this.§7K§);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§push(param2.height);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr315:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(param2.width);
                                                                                       }
                                                                                       §§pop().§ U§ = §§pop();
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr323:
                                                                                          if(param1.finishParticleSizeX.length() == 1)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr330:
                                                                                                this.§30§ = this.§@[§(param1.finishParticleSizeX);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr338:
                                                                                                   if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                   {
                                                                                                      this.§7K§ = this.§@[§(param1.FinishParticleSizeVarianceX);
                                                                                                      if(!(_loc4_ && param2))
                                                                                                      {
                                                                                                         addr356:
                                                                                                         if(param1.finishParticleSizeY.length() == 1)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               this.§7!>§ = this.§@[§(param1.finishParticleSizeY);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr371:
                                                                                                                  if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                  {
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        this.§ U§ = this.§@[§(param1.FinishParticleSizeVarianceY);
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr391:
                                                                                                                           this.§^Z§ = deg2rad(this.§@[§(param1.angle));
                                                                                                                           this.§!b§ = deg2rad(this.§@[§(param1.angleVariance));
                                                                                                                           this.§#A§ = this.§@[§(param1.speed);
                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                           {
                                                                                                                              addr420:
                                                                                                                              this.§3E§ = this.§@[§(param1.speedVariance);
                                                                                                                              if(_loc3_ || param1)
                                                                                                                              {
                                                                                                                                 addr433:
                                                                                                                                 this.§>0§ = this.§@[§(param1.radialAcceleration);
                                                                                                                                 this.§;L§ = this.§@[§(param1.tangentialAcceleration);
                                                                                                                                 this.§-!6§ = this.§@[§(param1.maxRadius);
                                                                                                                                 addr451:
                                                                                                                                 this.§<!2§ = this.§@[§(param1.maxRadiusVariance);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    addr459:
                                                                                                                                    this.§^'§ = this.§@[§(param1.minRadius);
                                                                                                                                    this.§7S§ = deg2rad(this.§@[§(param1.rotatePerSecond));
                                                                                                                                    this.§-^§ = deg2rad(this.§@[§(param1.rotatePerSecondVariance));
                                                                                                                                    this.§1M§ = this.§?6§(param1.startColor);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       this.§'!H§ = this.§?6§(param1.startColorVariance);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr497:
                                                                                                                                          this.§%!F§ = this.§?6§(param1.finishColor);
                                                                                                                                          addr503:
                                                                                                                                          this.§ !§ = this.§?6§(param1.finishColorVariance);
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr551:
                                                                                                                                          §"!C§ = this.§@[§(param1.emissionVariance);
                                                                                                                                          §§goto(addr557);
                                                                                                                                       }
                                                                                                                                       §5d§ = this.§3!§(param1.blendFuncSource);
                                                                                                                                       §7&§ = this.§3!§(param1.blendFuncDestination);
                                                                                                                                       addr533:
                                                                                                                                       §@>§ = this.§7w§(param1.textureSmoothing);
                                                                                                                                       if(!(_loc4_ && param2))
                                                                                                                                       {
                                                                                                                                          if(param1.emissionVariance.length == 1)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr557:
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr551);
                                                                                                                              }
                                                                                                                              §§goto(addr503);
                                                                                                                           }
                                                                                                                           §§goto(addr533);
                                                                                                                        }
                                                                                                                        §§goto(addr459);
                                                                                                                     }
                                                                                                                     §§goto(addr497);
                                                                                                                  }
                                                                                                                  §§goto(addr391);
                                                                                                               }
                                                                                                               §§goto(addr420);
                                                                                                            }
                                                                                                            §§goto(addr497);
                                                                                                         }
                                                                                                         §§goto(addr371);
                                                                                                      }
                                                                                                      §§goto(addr451);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr356);
                                                                                             }
                                                                                             §§goto(addr433);
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       §§goto(addr459);
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                                 §§goto(addr315);
                                                                              }
                                                                              §§goto(addr533);
                                                                           }
                                                                           §§goto(addr323);
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                     }
                                                                     §§goto(addr281);
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            §§goto(addr420);
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr391);
                                             }
                                             §§goto(addr356);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr459);
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr338);
                              }
                              §§push(§§pop() / §§pop());
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr176);
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr330);
            }
            else
            {
               this.§ get§ = 0;
               if(_loc3_)
               {
                  §§goto(addr94);
               }
            }
            §§goto(addr220);
         }
         §§goto(addr214);
      }
      
      protected function §`!1§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@[§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §6l§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §?6§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc3_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            if(!(_loc4_ && _loc2_))
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  if(!_loc3_)
                  {
                  }
               }
               §§goto(addr86);
            }
            _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         }
         addr86:
         return _loc2_;
      }
      
      protected function §3!§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§`!1§(param1));
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            §§push(0);
            if(_loc5_)
            {
               if(§§pop() === _loc3_)
               {
                  if(!_loc4_)
                  {
                     §§push(0);
                     if(_loc4_ && _loc2_)
                     {
                        addr140:
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 addr267:
                                 switch(2)
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
                                 addr195:
                                 §§push(5);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr203:
                                 }
                                 else
                                 {
                                    addr241:
                                 }
                                 §§goto(addr267);
                              }
                              §§goto(addr267);
                           }
                           else
                           {
                              §§push(769);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       §§push(3);
                                       if(_loc5_)
                                       {
                                          §§goto(addr267);
                                       }
                                       else
                                       {
                                          addr250:
                                          §§push(_loc3_);
                                       }
                                       §§goto(addr267);
                                    }
                                    else
                                    {
                                       §§push(770);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr177:
                                          §§push(_loc3_);
                                          if(_loc5_ || param1)
                                          {
                                             addr185:
                                             if(§§pop() === §§pop())
                                             {
                                                §§push(4);
                                                if(!_loc4_)
                                                {
                                                   addr189:
                                                }
                                                else
                                                {
                                                   addr262:
                                                }
                                                §§goto(addr267);
                                             }
                                             else
                                             {
                                                §§push(771);
                                                if(_loc5_)
                                                {
                                                   if(§§pop() === _loc3_)
                                                   {
                                                      §§goto(addr195);
                                                   }
                                                   else
                                                   {
                                                      §§push(772);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc4_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(6);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§goto(addr241);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr257:
                                                                     §§goto(addr267);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr243:
                                                               if(773 !== _loc3_)
                                                               {
                                                                  §§push(774);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr250);
                                                                  }
                                                                  addr260:
                                                                  if(§§pop() === _loc3_)
                                                                  {
                                                                     addr261:
                                                                     §§goto(addr262);
                                                                     §§push(9);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr267);
                                                                     §§push(10);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr267);
                                                            §§push(7);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                }
                                                §§goto(addr203);
                                             }
                                          }
                                          addr251:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(8);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr257);
                                                }
                                                else
                                                {
                                                   §§goto(addr260);
                                                }
                                             }
                                             §§goto(addr261);
                                          }
                                          else
                                          {
                                             §§push(775);
                                          }
                                          §§goto(addr260);
                                       }
                                       §§goto(addr241);
                                    }
                                 }
                                 §§goto(addr251);
                              }
                              §§goto(addr177);
                           }
                        }
                        §§goto(addr185);
                     }
                  }
                  else
                  {
                     addr135:
                     §§push(1);
                  }
                  §§goto(addr267);
               }
               else
               {
                  §§push(1);
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§goto(addr135);
                        }
                        else
                        {
                           §§goto(addr267);
                        }
                     }
                     else
                     {
                        §§push(768);
                        if(_loc5_)
                        {
                           §§goto(addr140);
                        }
                        §§goto(addr243);
                     }
                     §§goto(addr267);
                  }
               }
               §§goto(addr260);
            }
            §§goto(addr189);
         }
         §§goto(addr267);
      }
      
      protected function §7w§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§6l§(param1));
         if(_loc4_ || param1)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               §§push(§<V§.§4s§);
               if(_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr72:
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    addr78:
                                    §§push(§<V§.§2'§);
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr87:
                                       §§push(§§pop() == §§pop());
                                       if(_loc4_ || param1)
                                       {
                                          addr105:
                                          if(!§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                addr109:
                                                §§pop();
                                                if(_loc4_ || this)
                                                {
                                                   §§goto(addr117);
                                                }
                                                §§goto(addr126);
                                             }
                                          }
                                          §§goto(addr123);
                                       }
                                       §§goto(addr109);
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr72);
               }
               §§goto(addr87);
            }
            §§goto(addr78);
         }
         addr117:
         §§push(_loc2_);
         if(!_loc3_)
         {
            addr123:
            if(§§pop() == §<V§.NONE)
            {
               if(!_loc3_)
               {
                  addr126:
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     §§goto(addr129);
                  }
               }
               else
               {
                  addr130:
                  §§push(§<V§.§4s§);
               }
               return §§pop();
            }
            §§goto(addr130);
         }
         addr129:
         return §§pop();
      }
   }
}

import §>!H§.§<J§;

class PDParticle extends §<J§
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
