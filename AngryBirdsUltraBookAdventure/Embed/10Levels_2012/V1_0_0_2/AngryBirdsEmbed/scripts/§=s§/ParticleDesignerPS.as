package §=s§
{
   import §5!@§.§7!=§;
   import §5!@§.Texture;
   import §@e§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §#!H§
   {
       
      
      private const § J§:int = 0;
      
      private const §8Y§:int = 1;
      
      private var §4q§:Number;
      
      private var §0U§:int;
      
      private var §#D§:Number;
      
      private var §"!B§:Number;
      
      private var §[`§:int;
      
      private var §9!2§:Number;
      
      private var §"#§:Number;
      
      private var §9!C§:Number;
      
      private var §31§:Number;
      
      private var §!u§:Number;
      
      private var §,O§:Number;
      
      private var §7a§:Number;
      
      private var §[g§:Number;
      
      private var §&'§:Number;
      
      private var §1!-§:Number;
      
      private var §?B§:Number;
      
      private var §>A§:Number;
      
      private var §=!3§:Number;
      
      private var §6;§:Number;
      
      private var §7L§:Number;
      
      private var §0g§:Number;
      
      private var §3!,§:Number;
      
      private var §`y§:Number;
      
      private var §^6§:Number;
      
      private var §^!F§:Number;
      
      private var §0z§:Number;
      
      private var §^k§:Number;
      
      private var §8§:Number;
      
      private var §@!G§:Number;
      
      private var §6<§:Number;
      
      private var §0O§:Number;
      
      private var §'8§:ColorArgb;
      
      private var §+p§:ColorArgb;
      
      private var §!!3§:ColorArgb;
      
      private var §3!D§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§!c§(param1,param2);
         }
         §§push(this.§[`§);
         §§push(this.§9!2§);
         if(_loc4_)
         {
            §§push(§§pop() + this.§9!C§);
         }
         §§push(§§pop() / §§pop());
         if(_loc4_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            super(param2,_loc3_,this.§[`§,§-!&§,§]`§);
            if(!_loc5_)
            {
               addr73:
               §+!8§ = false;
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function get §%!%§() : int
      {
         return this.§[`§;
      }
      
      override protected function createParticle() : § !H§
      {
         return new PDParticle();
      }
      
      private function get §-!4§() : Boolean
      {
         return this.§%!%§ >= 20;
      }
      
      override protected function initParticle(param1:§ !H§) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1221
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override protected function advanceParticle(param1:§ !H§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§=!,§ - _loc3_.currentTime);
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc14_ || _loc3_)
         {
            if(§§pop() > param2)
            {
               §§push(param2);
               if(_loc14_)
               {
                  addr73:
                  param2 = Number(Number(§§pop()));
                  _loc3_.currentTime += param2;
                  if(_loc14_)
                  {
                     if(this.§0U§ == this.§8Y§)
                     {
                        if(_loc14_ || _loc3_)
                        {
                           §§push(!_loc3_.skipUpdate);
                           if(!_loc13_)
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
                                          §§push(!this.§-!4§);
                                          if(_loc14_ || this)
                                          {
                                             addr129:
                                             if(§§pop())
                                             {
                                                if(_loc14_)
                                                {
                                                   if(this.§-!4§)
                                                   {
                                                      _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                      if(_loc14_)
                                                      {
                                                         §§push(_loc3_);
                                                         §§push(_loc3_.radius);
                                                         if(_loc14_ || _loc3_)
                                                         {
                                                            §§push(_loc3_.radiusDelta);
                                                            if(!(_loc13_ && param2))
                                                            {
                                                               addr179:
                                                               §§push(§§pop() * param2);
                                                               if(!(_loc13_ && param2))
                                                               {
                                                                  addr176:
                                                                  §§push(§§pop() * 2);
                                                               }
                                                               §§pop().radius = §§pop() - §§pop();
                                                               if(!(_loc13_ && param2))
                                                               {
                                                                  addr217:
                                                                  _loc3_.x = §+I§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                  if(_loc14_)
                                                                  {
                                                                     _loc3_.y = §8]§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                     addr243:
                                                                     if(_loc3_.radius < this.§@!G§)
                                                                     {
                                                                        _loc3_.currentTime = _loc3_.§=!,§;
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           addr733:
                                                                           §§push(!_loc3_.skipUpdate);
                                                                           if(!!_loc3_.skipUpdate)
                                                                           {
                                                                              addr738:
                                                                              §§pop();
                                                                              if(_loc14_)
                                                                              {
                                                                                 addr741:
                                                                                 §§push(!this.§-!4§);
                                                                                 if(_loc14_ || this)
                                                                                 {
                                                                                    addr751:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr756:
                                                                                          addr754:
                                                                                          if(this.§-!4§)
                                                                                          {
                                                                                             addr763:
                                                                                             §§push(param2 * 2);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr762:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             param2 = §§pop();
                                                                                          }
                                                                                          _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                          addr773:
                                                                                          _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                          §§push(_loc3_.colorArgb);
                                                                                          if(_loc14_ || param2)
                                                                                          {
                                                                                             §§push(_loc3_.colorArgb);
                                                                                             if(_loc14_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().red);
                                                                                                §§push(_loc3_.colorArgbDelta);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(§§pop().red);
                                                                                                   §§push(param2);
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc14_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            §§pop().red = §§pop();
                                                                                                            addr821:
                                                                                                            §§push(_loc3_.colorArgb);
                                                                                                            if(_loc14_ || this)
                                                                                                            {
                                                                                                               §§push(_loc3_.colorArgb);
                                                                                                               if(!(_loc13_ && param1))
                                                                                                               {
                                                                                                                  addr840:
                                                                                                                  §§push(§§pop().green);
                                                                                                                  §§push(_loc3_.colorArgbDelta);
                                                                                                                  if(!(_loc13_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr849:
                                                                                                                     §§push(§§pop().green);
                                                                                                                     §§push(param2);
                                                                                                                     if(_loc14_ || param1)
                                                                                                                     {
                                                                                                                        §§pop().green = §§pop() + §§pop() * §§pop();
                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           addr865:
                                                                                                                           §§push(_loc3_.colorArgb);
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              addr874:
                                                                                                                              §§push(§§pop().blue);
                                                                                                                              if(_loc14_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.colorArgbDelta);
                                                                                                                                 if(!(_loc13_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().blue);
                                                                                                                                    if(_loc14_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(param2);
                                                                                                                                       if(_loc14_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr916:
                                                                                                                                             §§pop().blue = §§pop() + §§pop();
                                                                                                                                             addr915:
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                addr923:
                                                                                                                                                addr921:
                                                                                                                                                addr919:
                                                                                                                                                §§push(_loc3_.colorArgb);
                                                                                                                                                §§push(_loc3_.colorArgb.alpha);
                                                                                                                                                if(_loc14_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr933:
                                                                                                                                                   §§push(_loc3_.colorArgbDelta.alpha);
                                                                                                                                                   if(!(_loc13_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr941:
                                                                                                                                                      §§push(§§pop() * param2);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().alpha = §§pop();
                                                                                                                                                _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                addr960:
                                                                                                                                                _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                addr965:
                                                                                                                                                _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                addr970:
                                                                                                                                                _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                §§push(_loc3_.skipUpdate);
                                                                                                                                                if(_loc14_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().skipUpdate = §§pop();
                                                                                                                                                return;
                                                                                                                                                addr945:
                                                                                                                                             }
                                                                                                                                             §§goto(addr945);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr941);
                                                                                                                                    }
                                                                                                                                    §§goto(addr915);
                                                                                                                                 }
                                                                                                                                 §§goto(addr933);
                                                                                                                              }
                                                                                                                              §§goto(addr916);
                                                                                                                           }
                                                                                                                           §§goto(addr923);
                                                                                                                        }
                                                                                                                        §§goto(addr921);
                                                                                                                     }
                                                                                                                     §§goto(addr941);
                                                                                                                  }
                                                                                                                  §§goto(addr933);
                                                                                                               }
                                                                                                               §§goto(addr874);
                                                                                                            }
                                                                                                            §§goto(addr865);
                                                                                                         }
                                                                                                         §§goto(addr840);
                                                                                                      }
                                                                                                      §§goto(addr916);
                                                                                                   }
                                                                                                   §§goto(addr941);
                                                                                                }
                                                                                                §§goto(addr849);
                                                                                             }
                                                                                             §§goto(addr874);
                                                                                          }
                                                                                          §§goto(addr923);
                                                                                       }
                                                                                       §§goto(addr965);
                                                                                    }
                                                                                    §§goto(addr923);
                                                                                 }
                                                                                 §§goto(addr756);
                                                                              }
                                                                              §§goto(addr923);
                                                                           }
                                                                           §§goto(addr751);
                                                                           addr257:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr387:
                                                                           §§push(Number(_loc8_));
                                                                           if(_loc14_ || _loc3_)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(!(_loc13_ && param1))
                                                                                 {
                                                                                    addr407:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       _loc11_ = §§pop();
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(!(_loc13_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop() * _loc3_.radialAcceleration));
                                                                                             if(!(_loc13_ && param2))
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                addr434:
                                                                                                §§push(_loc9_ * _loc3_.radialAcceleration);
                                                                                                if(_loc14_ || _loc3_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      addr447:
                                                                                                      _loc9_ = §§pop();
                                                                                                      §§push(_loc10_);
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc13_ && this))
                                                                                                         {
                                                                                                            addr459:
                                                                                                            _loc12_ = §§pop();
                                                                                                            §§push(_loc11_);
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               addr463:
                                                                                                               §§push(-§§pop() * _loc3_.tangentialAcceleration);
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     addr472:
                                                                                                                     _loc10_ = §§pop();
                                                                                                                     §§push(_loc12_ * _loc3_.tangentialAcceleration);
                                                                                                                     if(_loc14_ || param1)
                                                                                                                     {
                                                                                                                        addr494:
                                                                                                                        _loc11_ = Number(§§pop());
                                                                                                                        if(this.§-!4§)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           §§push(_loc3_.velocityX);
                                                                                                                           if(!(_loc13_ && this))
                                                                                                                           {
                                                                                                                              §§push(2 * param2);
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 §§push(this.§0g§);
                                                                                                                                 if(_loc14_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       addr536:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc14_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                       }
                                                                                                                                       §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                       if(!(_loc13_ && param2))
                                                                                                                                       {
                                                                                                                                          addr546:
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          §§push(_loc3_.velocityY);
                                                                                                                                          if(_loc14_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(2 * param2);
                                                                                                                                             if(_loc14_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(this.§3!,§);
                                                                                                                                                if(_loc14_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(!(_loc13_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr594:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc14_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr592:
                                                                                                                                                         §§push(§§pop() + _loc11_);
                                                                                                                                                      }
                                                                                                                                                      §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr598:
                                                                                                                                                         _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                         addr706:
                                                                                                                                                         _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                            if(_loc14_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr733);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr756);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr923);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr919);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr592);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr594);
                                                                                                                                       }
                                                                                                                                       §§goto(addr923);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr536);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           §§push(_loc3_.velocityX);
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              §§push(param2);
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 §§push(this.§0g§);
                                                                                                                                 if(_loc14_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(_loc14_ || param1)
                                                                                                                                    {
                                                                                                                                       addr645:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                       }
                                                                                                                                       §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                       if(_loc14_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          §§push(_loc3_.velocityY);
                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(param2);
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§3!,§);
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      addr681:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr679:
                                                                                                                                                         §§push(§§pop() + _loc11_);
                                                                                                                                                      }
                                                                                                                                                      §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                      if(!(_loc13_ && param1))
                                                                                                                                                      {
                                                                                                                                                         _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                         if(!(_loc13_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr706);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr960);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr923);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr679);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr681);
                                                                                                                                       }
                                                                                                                                       §§goto(addr741);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr645);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr763);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr762);
                                                                                                         }
                                                                                                         §§goto(addr763);
                                                                                                      }
                                                                                                      §§goto(addr494);
                                                                                                   }
                                                                                                   §§goto(addr472);
                                                                                                }
                                                                                                §§goto(addr463);
                                                                                             }
                                                                                             §§goto(addr762);
                                                                                          }
                                                                                          §§goto(addr447);
                                                                                       }
                                                                                       §§goto(addr923);
                                                                                    }
                                                                                    §§goto(addr472);
                                                                                 }
                                                                              }
                                                                              §§goto(addr763);
                                                                           }
                                                                           §§goto(addr434);
                                                                        }
                                                                        §§goto(addr762);
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                                  §§goto(addr598);
                                                               }
                                                               else
                                                               {
                                                                  addr320:
                                                                  _loc6_ = _loc3_.y - _loc3_.startY;
                                                                  addr314:
                                                                  §§push(_loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_));
                                                                  §§push(0.01);
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           _loc7_ = 0.01;
                                                                           if(!(_loc13_ && this))
                                                                           {
                                                                              addr349:
                                                                              §§push(_loc5_ / _loc7_);
                                                                              if(_loc14_ || this)
                                                                              {
                                                                                 _loc8_ = Number(§§pop());
                                                                                 §§push(_loc6_);
                                                                                 if(!(_loc13_ && param2))
                                                                                 {
                                                                                    §§push(Number(§§pop() / _loc7_));
                                                                                    if(_loc14_ || this)
                                                                                    {
                                                                                       addr379:
                                                                                       _loc9_ = §§pop();
                                                                                       if(!(_loc13_ && param2))
                                                                                       {
                                                                                          §§goto(addr387);
                                                                                       }
                                                                                       §§goto(addr754);
                                                                                    }
                                                                                    §§goto(addr459);
                                                                                 }
                                                                                 §§goto(addr407);
                                                                              }
                                                                              §§goto(addr763);
                                                                           }
                                                                           §§goto(addr733);
                                                                        }
                                                                        §§goto(addr821);
                                                                     }
                                                                     §§goto(addr349);
                                                                  }
                                                               }
                                                               §§goto(addr472);
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                   else
                                                   {
                                                      _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                      §§push(_loc3_);
                                                      §§push(_loc3_.radius);
                                                      if(!_loc13_)
                                                      {
                                                         §§push(_loc3_.radiusDelta);
                                                         if(_loc14_ || param2)
                                                         {
                                                            §§push(§§pop() * param2);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().radius = §§pop();
                                                      if(_loc14_)
                                                      {
                                                         §§goto(addr217);
                                                      }
                                                   }
                                                   §§goto(addr546);
                                                }
                                                §§goto(addr459);
                                             }
                                          }
                                          §§goto(addr733);
                                       }
                                       §§goto(addr923);
                                    }
                                    else
                                    {
                                       addr260:
                                       §§push(!§§pop());
                                    }
                                    §§push(§§pop());
                                    if(_loc14_ || _loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§pop();
                                             if(_loc14_ || _loc3_)
                                             {
                                                §§push(!this.§-!4§);
                                                if(_loc14_ || this)
                                                {
                                                   addr295:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         §§push(_loc3_.x - _loc3_.startX);
                                                         if(!_loc13_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!_loc13_)
                                                            {
                                                               §§goto(addr314);
                                                            }
                                                            §§goto(addr546);
                                                         }
                                                         §§goto(addr379);
                                                      }
                                                      §§goto(addr773);
                                                   }
                                                   §§goto(addr598);
                                                }
                                                §§goto(addr733);
                                             }
                                             §§goto(addr970);
                                          }
                                          §§goto(addr738);
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr733);
                                 }
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr733);
                        }
                        §§goto(addr756);
                     }
                     else
                     {
                        §§push(_loc3_.skipUpdate);
                     }
                     §§goto(addr260);
                  }
                  §§goto(addr923);
               }
               §§goto(addr320);
            }
            else
            {
               §§push(Number(_loc4_));
               if(!(_loc13_ && param1))
               {
                  §§goto(addr73);
               }
            }
            §§goto(addr243);
         }
         §§goto(addr349);
      }
      
      private function §!c§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§#D§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         if(!_loc3_)
         {
            this.§"!B§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
            this.§0g§ = parseFloat(param1.gravity.attribute("x"));
            if(_loc4_)
            {
               this.§3!,§ = parseFloat(param1.gravity.attribute("y"));
               this.§0U§ = this.§%M§(param1.emitterType);
               this.§[`§ = this.§%M§(param1.maxParticles);
               if(_loc4_)
               {
                  this.§9!2§ = Math.max(0.01,this.§@h§(param1.particleLifeSpan));
                  this.§"#§ = this.§@h§(param1.particleLifespanVariance);
                  if(param1.particleInterval.length() == 1)
                  {
                     this.§9!C§ = this.§@h§(param1.particleInterval);
                     if(!(_loc3_ && param1))
                     {
                        addr111:
                        this.§31§ = this.§@h§(param1.startParticleSize);
                        if(!_loc3_)
                        {
                           §§push(this);
                           §§push(this.§31§);
                           if(_loc4_)
                           {
                              §§push(param2.height);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    addr133:
                                    §§push(§§pop() / param2.width);
                                 }
                                 §§pop().§,O§ = §§pop();
                                 if(_loc4_)
                                 {
                                    this.§!u§ = this.§@h§(param1.startParticleSizeVariance);
                                    §§push(this);
                                    §§push(this.§!u§);
                                    if(_loc4_ || param2)
                                    {
                                       §§push(param2.height);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_)
                                          {
                                             addr162:
                                             §§push(§§pop() / param2.width);
                                          }
                                          §§pop().§7a§ = §§pop();
                                          if(!(_loc3_ && this))
                                          {
                                             if(param1.startParticleSizeX.length() == 1)
                                             {
                                                this.§31§ = this.§@h§(param1.startParticleSizeX);
                                                if(_loc4_)
                                                {
                                                   addr184:
                                                   if(param1.startParticleSizeVarianceX.length() == 1)
                                                   {
                                                      if(_loc4_ || param2)
                                                      {
                                                         this.§!u§ = this.§@h§(param1.startParticleSizeVarianceX);
                                                         addr202:
                                                         if(param1.startParticleSizeY.length() == 1)
                                                         {
                                                            this.§,O§ = this.§@h§(param1.startParticleSizeY);
                                                            addr213:
                                                            if(param1.startParticleSizeVarianceY.length() == 1)
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  this.§7a§ = this.§@h§(param1.startParticleSizeVarianceY);
                                                                  addr231:
                                                                  if(param1.finishParticleSize.length() == 1)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        this.§[g§ = this.§@h§(param1.finishParticleSize);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§[g§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(param2.height);
                                                                              if(_loc4_ || param2)
                                                                              {
                                                                                 addr266:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(param2.width);
                                                                                 }
                                                                                 §§pop().§1!-§ = §§pop();
                                                                                 if(!(_loc3_ && param2))
                                                                                 {
                                                                                    addr284:
                                                                                    if(param1.FinishParticleSizeVariance.length() == 1)
                                                                                    {
                                                                                       addr289:
                                                                                       this.§&'§ = this.§@h§(param1.FinishParticleSizeVariance);
                                                                                       §§push(this);
                                                                                       §§push(this.§&'§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(param2.height);
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc3_ && param2))
                                                                                             {
                                                                                                addr319:
                                                                                                §§push(§§pop() / param2.width);
                                                                                             }
                                                                                             §§pop().§?B§ = §§pop();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr323:
                                                                                                if(param1.finishParticleSizeX.length() == 1)
                                                                                                {
                                                                                                   this.§[g§ = this.§@h§(param1.finishParticleSizeX);
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      addr341:
                                                                                                      if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            this.§&'§ = this.§@h§(param1.FinishParticleSizeVarianceX);
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               addr361:
                                                                                                               if(param1.finishParticleSizeY.length() == 1)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr368:
                                                                                                                     this.§1!-§ = this.§@h§(param1.finishParticleSizeY);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr376:
                                                                                                                        if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              this.§?B§ = this.§@h§(param1.FinishParticleSizeVarianceY);
                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                              {
                                                                                                                                 addr401:
                                                                                                                                 this.§>A§ = deg2rad(this.§@h§(param1.angle));
                                                                                                                                 if(!(_loc3_ && param2))
                                                                                                                                 {
                                                                                                                                    addr416:
                                                                                                                                    this.§=!3§ = deg2rad(this.§@h§(param1.angleVariance));
                                                                                                                                    addr424:
                                                                                                                                    this.§6;§ = this.§@h§(param1.speed);
                                                                                                                                    this.§7L§ = this.§@h§(param1.speedVariance);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       this.§`y§ = this.§@h§(param1.radialAcceleration);
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          addr446:
                                                                                                                                          this.§^!F§ = this.§@h§(param1.tangentialAcceleration);
                                                                                                                                       }
                                                                                                                                       this.§^k§ = this.§@h§(param1.maxRadius);
                                                                                                                                       addr458:
                                                                                                                                       this.§8§ = this.§@h§(param1.maxRadiusVariance);
                                                                                                                                       this.§@!G§ = this.§@h§(param1.minRadius);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          this.§6<§ = deg2rad(this.§@h§(param1.rotatePerSecond));
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             addr482:
                                                                                                                                             this.§0O§ = deg2rad(this.§@h§(param1.rotatePerSecondVariance));
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                addr492:
                                                                                                                                                this.§'8§ = this.§+!+§(param1.startColor);
                                                                                                                                                if(_loc4_ || param1)
                                                                                                                                                {
                                                                                                                                                   this.§+p§ = this.§+!+§(param1.startColorVariance);
                                                                                                                                                   §§goto(addr511);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr567);
                                                                                                                                          }
                                                                                                                                          §§goto(addr531);
                                                                                                                                       }
                                                                                                                                       §§goto(addr492);
                                                                                                                                    }
                                                                                                                                    §§goto(addr482);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr525);
                                                                                                                           }
                                                                                                                           §§goto(addr511);
                                                                                                                        }
                                                                                                                        §§goto(addr401);
                                                                                                                     }
                                                                                                                     §§goto(addr458);
                                                                                                                  }
                                                                                                                  §§goto(addr424);
                                                                                                               }
                                                                                                               §§goto(addr376);
                                                                                                            }
                                                                                                            §§goto(addr416);
                                                                                                         }
                                                                                                         §§goto(addr458);
                                                                                                      }
                                                                                                      §§goto(addr361);
                                                                                                   }
                                                                                                   §§goto(addr482);
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                        §§goto(addr525);
                                                                     }
                                                                     addr511:
                                                                     this.§!!3§ = this.§+!+§(param1.finishColor);
                                                                     if(!_loc3_)
                                                                     {
                                                                        this.§3!D§ = this.§+!+§(param1.finishColorVariance);
                                                                        addr525:
                                                                        §-!&§ = this.§,!C§(param1.blendFuncSource);
                                                                        §]`§ = this.§,!C§(param1.blendFuncDestination);
                                                                        addr531:
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           §§goto(addr554);
                                                                        }
                                                                        §§goto(addr562);
                                                                     }
                                                                     addr554:
                                                                     §6@§ = this.§,!4§(param1.textureSmoothing);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr562:
                                                                        if(param1.emissionVariance.length == 1)
                                                                        {
                                                                           addr567:
                                                                           §]+§ = this.§@h§(param1.emissionVariance);
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr492);
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§goto(addr446);
                                                   }
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr231);
                                       }
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr368);
                              }
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr368);
                     }
                     §§goto(addr401);
                  }
                  else
                  {
                     this.§9!C§ = 0;
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr111);
                     }
                  }
                  §§goto(addr213);
               }
               §§goto(addr289);
            }
            §§goto(addr361);
         }
         §§goto(addr416);
      }
      
      protected function §%M§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@h§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §]r§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §+!+§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc3_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            if(!_loc3_)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               if(!_loc3_)
               {
                  addr61:
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  if(_loc4_)
                  {
                     _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                  }
               }
            }
            return _loc2_;
         }
         §§goto(addr61);
      }
      
      protected function §,!C§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§%M§(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || _loc2_)
         {
            var _loc3_:* = §§pop();
            §§push(0);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(!(_loc4_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc4_ && param1)
                        {
                           addr146:
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 §§push(2);
                                 if(_loc5_ || param1)
                                 {
                                    addr263:
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
                                    addr263:
                                 }
                                 else
                                 {
                                    addr208:
                                    §§goto(addr263);
                                 }
                                 §§goto(addr263);
                              }
                              else
                              {
                                 addr161:
                                 if(769 === _loc3_)
                                 {
                                    §§push(3);
                                    if(_loc4_ && param1)
                                    {
                                       addr182:
                                    }
                                    §§goto(addr263);
                                 }
                                 else
                                 {
                                    §§push(770);
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(§§pop() === _loc3_)
                                       {
                                          §§goto(addr182);
                                          §§push(4);
                                       }
                                       else
                                       {
                                          §§push(771);
                                          §§push(_loc3_);
                                          if(!(_loc4_ && this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                addr194:
                                                §§goto(addr263);
                                                §§push(5);
                                             }
                                             else
                                             {
                                                §§push(772);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr203:
                                                   if(§§pop() === _loc3_)
                                                   {
                                                      §§push(6);
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr208);
                                                      }
                                                      else
                                                      {
                                                         addr258:
                                                         §§goto(addr263);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr211:
                                                      if(773 === _loc3_)
                                                      {
                                                         §§goto(addr263);
                                                         §§push(7);
                                                      }
                                                      else
                                                      {
                                                         §§push(774);
                                                         if(_loc5_ || this)
                                                         {
                                                            addr222:
                                                            §§push(_loc3_);
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(8);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr255:
                                                                     §§push(9);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(775);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     addr254:
                                                                     if(§§pop() === _loc3_)
                                                                     {
                                                                        §§goto(addr255);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr263);
                                                                        §§push(10);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr263);
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr263);
                                    }
                                    §§goto(addr203);
                                 }
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr254);
                        }
                        §§goto(addr263);
                     }
                     §§goto(addr255);
                  }
                  else
                  {
                     §§push(1);
                     if(_loc5_ || this)
                     {
                        if(§§pop() === _loc3_)
                        {
                           §§push(1);
                           if(_loc4_)
                           {
                              §§goto(addr194);
                           }
                        }
                        else
                        {
                           §§goto(addr146);
                           §§push(768);
                        }
                        §§goto(addr263);
                     }
                  }
                  §§goto(addr208);
               }
               §§goto(addr161);
            }
            §§goto(addr203);
         }
         §§goto(addr263);
      }
      
      protected function §,!4§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§]r§(param1));
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               §§push(§7!=§.§1%§);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop());
                     if(_loc4_ || param1)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    §§push(§7!=§.§"V§);
                                    if(!(_loc3_ && param1))
                                    {
                                       addr92:
                                       §§push(§§pop() == §§pop());
                                       if(!_loc3_)
                                       {
                                          addr95:
                                          if(!§§pop())
                                          {
                                             if(_loc4_ || this)
                                             {
                                                §§pop();
                                                if(_loc4_ || this)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc3_)
                                                   {
                                                      addr128:
                                                      if(§§pop() == §7!=§.NONE)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            addr136:
                                                            §§push(_loc2_);
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr139);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr140:
                                                            §§push(§7!=§.§1%§);
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr136);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr128);
                        }
                     }
                  }
                  §§goto(addr95);
               }
               §§goto(addr92);
            }
            addr139:
            return §§pop();
         }
         §§goto(addr140);
      }
   }
}

import §=s§.§ !H§;

class PDParticle extends § !H§
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
