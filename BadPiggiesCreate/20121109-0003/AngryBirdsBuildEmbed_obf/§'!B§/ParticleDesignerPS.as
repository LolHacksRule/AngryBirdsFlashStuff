package §'!B§
{
   import §0!-§.§89§;
   import §0!-§.Texture;
   import §6x§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §;V§
   {
       
      
      private const § !=§:int = 0;
      
      private const § #§:int = 1;
      
      private var §5!8§:Number;
      
      private var §`!5§:int;
      
      private var §1!1§:Number;
      
      private var §+!2§:Number;
      
      private var §0!n§:int;
      
      private var §#!h§:Number;
      
      private var §32§:Number;
      
      private var §`!+§:Number;
      
      private var §9!O§:Number;
      
      private var §^W§:Number;
      
      private var §1!9§:Number;
      
      private var §0n§:Number;
      
      private var §^!n§:Number;
      
      private var §?!b§:Number;
      
      private var §?!C§:Number;
      
      private var §,!V§:Number;
      
      private var §`2§:Number;
      
      private var §7![§:Number;
      
      private var § 2§:Number;
      
      private var §!]§:Number;
      
      private var §1!c§:Number;
      
      private var §4$§:Number;
      
      private var §]!%§:Number;
      
      private var §9,§:Number;
      
      private var §%!S§:Number;
      
      private var §5!m§:Number;
      
      private var §&F§:Number;
      
      private var §-v§:Number;
      
      private var §3!8§:Number;
      
      private var §[!!§:Number;
      
      private var §8!S§:Number;
      
      private var §,!G§:ColorArgb;
      
      private var §^!b§:ColorArgb;
      
      private var §8!J§:ColorArgb;
      
      private var §4!9§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§%!7§(param1,param2);
         }
         §§push(this.§0!n§);
         §§push(this.§#!h§);
         if(_loc5_)
         {
            §§push(§§pop() + this.§`!+§);
         }
         §§push(§§pop() / §§pop());
         if(_loc5_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            super(param2,_loc3_,this.§0!n§,§;!J§,§@V§);
            if(!(_loc4_ && param2))
            {
               addr89:
               §2!'§ = false;
            }
            return;
         }
         §§goto(addr89);
      }
      
      public function get §;!N§() : int
      {
         return this.§0!n§;
      }
      
      override protected function createParticle() : §+!Q§
      {
         return new PDParticle();
      }
      
      private function get §-M§() : Boolean
      {
         return this.§;!N§ >= 20;
      }
      
      override protected function initParticle(param1:§+!Q§) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1266
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override protected function advanceParticle(param1:§+!Q§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§=W§ - _loc3_.currentTime);
         if(_loc14_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         §§push(param2);
         if(!(_loc13_ && this))
         {
            §§push(§§pop() > §§pop());
            if(!(_loc13_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc13_ && param1))
                  {
                     §§push(Number(param2));
                     if(_loc14_)
                     {
                        addr85:
                        param2 = Number(§§pop());
                        _loc3_.currentTime += param2;
                        if(_loc14_)
                        {
                           if(this.§`!5§ == this.§ #§)
                           {
                              §§push(_loc3_.skipUpdate);
                              if(!(_loc13_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(!(_loc13_ && this))
                                 {
                                    §§push(§§pop());
                                    if(_loc14_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          §§push(!this.§-M§);
                                          if(!_loc13_)
                                          {
                                             addr127:
                                             if(§§pop())
                                             {
                                                if(this.§-M§)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                      if(_loc14_)
                                                      {
                                                         §§push(_loc3_);
                                                         §§push(_loc3_.radius);
                                                         if(!(_loc13_ && this))
                                                         {
                                                            §§push(_loc3_.radiusDelta);
                                                            if(_loc14_)
                                                            {
                                                               addr167:
                                                               §§push(§§pop() * param2);
                                                               if(_loc14_)
                                                               {
                                                                  addr164:
                                                                  §§push(§§pop() * 2);
                                                               }
                                                               §§pop().radius = §§pop() - §§pop();
                                                               if(_loc14_ || param2)
                                                               {
                                                                  addr212:
                                                                  _loc3_.x = §<!t§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                  _loc3_.y = §+J§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr236:
                                                                     if(_loc3_.radius < this.§3!8§)
                                                                     {
                                                                        _loc3_.currentTime = _loc3_.§=W§;
                                                                        addr703:
                                                                        §§push(_loc3_.skipUpdate);
                                                                        if(!(_loc13_ && _loc3_))
                                                                        {
                                                                           addr712:
                                                                           §§push(!§§pop());
                                                                           if(_loc14_ || param1)
                                                                           {
                                                                              addr721:
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr722:
                                                                                 §§pop();
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr725:
                                                                                    §§push(this.§-M§);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc14_ || _loc3_)
                                                                                       {
                                                                                       }
                                                                                       addr740:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc13_ && _loc3_))
                                                                                          {
                                                                                             addr754:
                                                                                             addr748:
                                                                                             §§push(param2 * 2);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                addr753:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             param2 = §§pop();
                                                                                             addr755:
                                                                                             _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                             _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr775:
                                                                                                §§push(_loc3_.colorArgb);
                                                                                                if(_loc14_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc3_.colorArgb);
                                                                                                   if(!(_loc13_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop().red);
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         §§push(_loc3_.colorArgbDelta);
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            §§push(§§pop().red);
                                                                                                            §§push(param2);
                                                                                                            if(!(_loc13_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     §§pop().red = §§pop();
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.colorArgb);
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop().green);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.colorArgbDelta);
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    addr838:
                                                                                                                                    §§push(§§pop().green);
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       addr841:
                                                                                                                                       §§push(param2);
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                addr850:
                                                                                                                                                §§pop().green = §§pop();
                                                                                                                                                if(!(_loc13_ && this))
                                                                                                                                                {
                                                                                                                                                   addr858:
                                                                                                                                                   §§push(_loc3_.colorArgb);
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      addr862:
                                                                                                                                                      §§push(_loc3_.colorArgb);
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr867:
                                                                                                                                                         §§push(§§pop().blue);
                                                                                                                                                         §§push(_loc3_.colorArgbDelta);
                                                                                                                                                         if(_loc14_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr876:
                                                                                                                                                            §§push(§§pop().blue);
                                                                                                                                                            if(_loc14_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr884:
                                                                                                                                                               §§push(param2);
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  addr887:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     addr890:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().blue = §§pop();
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           addr909:
                                                                                                                                                                           addr900:
                                                                                                                                                                           addr898:
                                                                                                                                                                           addr896:
                                                                                                                                                                           §§push(_loc3_.colorArgb);
                                                                                                                                                                           §§push(_loc3_.colorArgb.alpha);
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              addr907:
                                                                                                                                                                              §§push(_loc3_.colorArgbDelta.alpha * param2);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().alpha = §§pop();
                                                                                                                                                                           §§goto(addr910);
                                                                                                                                                                        }
                                                                                                                                                                        addr910:
                                                                                                                                                                        _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                        if(_loc14_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr932:
                                                                                                                                                                           _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                           addr937:
                                                                                                                                                                           _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                           addr942:
                                                                                                                                                                           _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                           addr947:
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           §§push(_loc3_.skipUpdate);
                                                                                                                                                                           if(!(_loc13_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(!§§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().skipUpdate = §§pop();
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr959);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr909);
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr907);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr890);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr907);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr900);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr898);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr909);
                                                                                                                                          }
                                                                                                                                          §§goto(addr890);
                                                                                                                                       }
                                                                                                                                       §§goto(addr907);
                                                                                                                                    }
                                                                                                                                    §§goto(addr884);
                                                                                                                                 }
                                                                                                                                 §§goto(addr876);
                                                                                                                              }
                                                                                                                              §§goto(addr850);
                                                                                                                           }
                                                                                                                           §§goto(addr909);
                                                                                                                        }
                                                                                                                        §§goto(addr862);
                                                                                                                     }
                                                                                                                     addr959:
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr867);
                                                                                                               }
                                                                                                               §§goto(addr841);
                                                                                                            }
                                                                                                            §§goto(addr887);
                                                                                                         }
                                                                                                         §§goto(addr838);
                                                                                                      }
                                                                                                      §§goto(addr907);
                                                                                                   }
                                                                                                   §§goto(addr867);
                                                                                                }
                                                                                                §§goto(addr862);
                                                                                             }
                                                                                             §§goto(addr942);
                                                                                          }
                                                                                          §§goto(addr937);
                                                                                       }
                                                                                       §§goto(addr755);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr775);
                                                                              }
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr740);
                                                                              §§push(this.§-M§);
                                                                           }
                                                                           §§goto(addr947);
                                                                        }
                                                                        §§goto(addr740);
                                                                        addr245:
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr490:
                                                                     §§push(_loc3_);
                                                                     §§push(_loc3_.velocityX);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(2 * param2);
                                                                        if(_loc14_ || param1)
                                                                        {
                                                                           §§push(this.§1!c§);
                                                                           if(!(_loc13_ && _loc3_))
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!(_loc13_ && this))
                                                                              {
                                                                                 addr532:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc14_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                 }
                                                                                 §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                 §§push(_loc3_);
                                                                                 §§push(_loc3_.velocityY);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§push(2 * param2);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(this.§4$§);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             addr567:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc13_ && param1))
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                             }
                                                                                             §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                             if(!(_loc13_ && param2))
                                                                                             {
                                                                                                _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                addr681:
                                                                                                _loc3_.x += _loc3_.velocityX * param2;
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr692:
                                                                                                   _loc3_.y += _loc3_.velocityY * param2;
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      §§goto(addr703);
                                                                                                   }
                                                                                                   §§goto(addr937);
                                                                                                }
                                                                                                §§goto(addr755);
                                                                                             }
                                                                                             §§goto(addr932);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr567);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr532);
                                                                  }
                                                               }
                                                               §§goto(addr490);
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   §§goto(addr775);
                                                }
                                                else
                                                {
                                                   _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                   if(!_loc13_)
                                                   {
                                                      §§push(_loc3_);
                                                      §§push(_loc3_.radius);
                                                      if(_loc14_ || this)
                                                      {
                                                         §§push(_loc3_.radiusDelta);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(§§pop() * param2);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().radius = §§pop();
                                                      if(_loc14_ || param2)
                                                      {
                                                         §§goto(addr212);
                                                      }
                                                      else
                                                      {
                                                         addr301:
                                                         §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                         if(!_loc13_)
                                                         {
                                                            §§push(_loc7_ = §§pop());
                                                            if(_loc14_ || this)
                                                            {
                                                               §§push(0.01);
                                                               if(!_loc13_)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(0.01);
                                                                        if(!(_loc13_ && _loc3_))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc14_ || this)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              if(!(_loc13_ && param1))
                                                                              {
                                                                                 addr352:
                                                                                 §§push(_loc5_);
                                                                                 if(_loc14_ || this)
                                                                                 {
                                                                                    _loc8_ = §§pop() / _loc7_;
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       §§push(_loc7_);
                                                                                       if(!(_loc13_ && param1))
                                                                                       {
                                                                                          addr387:
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc9_ = §§pop();
                                                                                          _loc10_ = _loc8_;
                                                                                          if(!(_loc13_ && _loc3_))
                                                                                          {
                                                                                             addr396:
                                                                                             §§push(Number(_loc9_));
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                if(_loc14_ || param1)
                                                                                                {
                                                                                                   addr408:
                                                                                                   §§push(_loc8_);
                                                                                                   §§push(_loc3_.radialAcceleration);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc14_ || param2)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         if(!(_loc13_ && param2))
                                                                                                         {
                                                                                                            addr433:
                                                                                                            §§push(Number(_loc9_ * _loc3_.radialAcceleration));
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               _loc9_ = §§pop();
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  addr441:
                                                                                                                  _loc12_ = _loc10_;
                                                                                                                  if(_loc14_ || param2)
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        addr453:
                                                                                                                        §§push(-§§pop());
                                                                                                                        §§push(_loc3_.tangentialAcceleration);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           addr459:
                                                                                                                           _loc10_ = §§pop() * §§pop();
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 addr484:
                                                                                                                                 _loc11_ = Number(§§pop() * _loc3_.tangentialAcceleration);
                                                                                                                                 addr482:
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    addr489:
                                                                                                                                    if(this.§-M§)
                                                                                                                                    {
                                                                                                                                       §§goto(addr490);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       §§push(_loc3_.velocityX);
                                                                                                                                       if(_loc14_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(param2);
                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(this.§1!c§);
                                                                                                                                             if(_loc14_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                if(!(_loc13_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr629:
                                                                                                                                                   addr630:
                                                                                                                                                   addr631:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                   }
                                                                                                                                                   §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   §§push(_loc3_.velocityY);
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param2);
                                                                                                                                                      if(!(_loc13_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§4$§);
                                                                                                                                                         if(!(_loc13_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            if(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               addr663:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  addr661:
                                                                                                                                                                  §§push(§§pop() + _loc11_);
                                                                                                                                                               }
                                                                                                                                                               §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                               if(_loc14_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr672:
                                                                                                                                                                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                  §§goto(addr681);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr692);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr661);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr663);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr629);
                                                                                                                                          }
                                                                                                                                          §§goto(addr630);
                                                                                                                                       }
                                                                                                                                       §§goto(addr631);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr775);
                                                                                                                              }
                                                                                                                              §§goto(addr754);
                                                                                                                           }
                                                                                                                           §§goto(addr692);
                                                                                                                        }
                                                                                                                        §§goto(addr482);
                                                                                                                     }
                                                                                                                     §§goto(addr459);
                                                                                                                  }
                                                                                                                  §§goto(addr909);
                                                                                                               }
                                                                                                               §§goto(addr672);
                                                                                                            }
                                                                                                            §§goto(addr453);
                                                                                                         }
                                                                                                         §§goto(addr629);
                                                                                                      }
                                                                                                      §§goto(addr753);
                                                                                                   }
                                                                                                   §§goto(addr459);
                                                                                                }
                                                                                                §§goto(addr748);
                                                                                             }
                                                                                             §§goto(addr433);
                                                                                          }
                                                                                          §§goto(addr725);
                                                                                       }
                                                                                       §§goto(addr459);
                                                                                    }
                                                                                    §§goto(addr909);
                                                                                 }
                                                                              }
                                                                              §§goto(addr408);
                                                                           }
                                                                           §§goto(addr433);
                                                                        }
                                                                        §§goto(addr441);
                                                                     }
                                                                     §§goto(addr754);
                                                                  }
                                                                  §§goto(addr352);
                                                               }
                                                               §§goto(addr482);
                                                            }
                                                            §§goto(addr484);
                                                         }
                                                         §§goto(addr459);
                                                      }
                                                   }
                                                }
                                                §§goto(addr858);
                                             }
                                             §§goto(addr703);
                                          }
                                          §§goto(addr489);
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr721);
                                 }
                                 §§goto(addr740);
                              }
                              else
                              {
                                 addr262:
                                 §§pop();
                                 §§push(this.§-M§);
                                 if(_loc14_)
                                 {
                                    addr268:
                                    if(!§§pop())
                                    {
                                       if(_loc14_ || param1)
                                       {
                                          §§push(_loc3_.x - _loc3_.startX);
                                          if(!_loc13_)
                                          {
                                             _loc5_ = §§pop();
                                             §§push(_loc3_.y - _loc3_.startY);
                                             if(_loc14_)
                                             {
                                                _loc6_ = §§pop();
                                                if(!(_loc13_ && param1))
                                                {
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr896);
                                             }
                                             §§goto(addr453);
                                          }
                                          §§goto(addr387);
                                       }
                                       §§goto(addr301);
                                    }
                                    §§goto(addr681);
                                 }
                              }
                              §§goto(addr712);
                           }
                           else
                           {
                              §§push(_loc3_.skipUpdate);
                              if(!_loc13_)
                              {
                                 addr250:
                                 §§push(!§§pop());
                                 if(!(_loc13_ && param2))
                                 {
                                    §§push(§§pop());
                                    if(!_loc13_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr262);
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr721);
                                 }
                                 §§goto(addr722);
                              }
                           }
                           §§goto(addr721);
                        }
                        §§goto(addr692);
                     }
                     §§goto(addr396);
                  }
                  §§goto(addr909);
               }
               else
               {
                  §§push(Number(_loc4_));
               }
               §§goto(addr85);
            }
            §§goto(addr250);
         }
         §§goto(addr236);
      }
      
      private function §%!7§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§1!1§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            this.§+!2§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
            this.§1!c§ = parseFloat(param1.gravity.attribute("x"));
            if(!_loc3_)
            {
               this.§4$§ = parseFloat(param1.gravity.attribute("y"));
               if(_loc4_)
               {
                  this.§`!5§ = this.§?U§(param1.emitterType);
                  this.§0!n§ = this.§?U§(param1.maxParticles);
                  this.§#!h§ = Math.max(0.01,this.§>o§(param1.particleLifeSpan));
                  this.§32§ = this.§>o§(param1.particleLifespanVariance);
                  if(_loc4_ || this)
                  {
                     if(param1.particleInterval.length() == 1)
                     {
                        if(_loc4_ || param2)
                        {
                           this.§`!+§ = this.§>o§(param1.particleInterval);
                        }
                     }
                     else
                     {
                        this.§`!+§ = 0;
                     }
                     this.§9!O§ = this.§>o§(param1.startParticleSize);
                     §§push(this);
                     §§push(this.§9!O§);
                     if(!_loc3_)
                     {
                        §§push(param2.height);
                        if(_loc4_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_)
                           {
                              addr131:
                              §§push(§§pop() / param2.width);
                           }
                           §§pop().§1!9§ = §§pop();
                           this.§^W§ = this.§>o§(param1.startParticleSizeVariance);
                           if(_loc4_)
                           {
                              §§push(this);
                              §§push(this.§^W§);
                              if(!(_loc3_ && param2))
                              {
                                 §§push(param2.height);
                                 if(!_loc3_)
                                 {
                                    addr166:
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(param2.width);
                                    }
                                    §§pop().§0n§ = §§pop();
                                    if(param1.startParticleSizeX.length() == 1)
                                    {
                                       this.§9!O§ = this.§>o§(param1.startParticleSizeX);
                                    }
                                    if(param1.startParticleSizeVarianceX.length() == 1)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr185:
                                          this.§^W§ = this.§>o§(param1.startParticleSizeVarianceX);
                                          addr191:
                                          if(param1.startParticleSizeY.length() == 1)
                                          {
                                             this.§1!9§ = this.§>o§(param1.startParticleSizeY);
                                             if(!(_loc3_ && this))
                                             {
                                                addr209:
                                                if(param1.startParticleSizeVarianceY.length() == 1)
                                                {
                                                   this.§0n§ = this.§>o§(param1.startParticleSizeVarianceY);
                                                   if(_loc4_)
                                                   {
                                                      addr222:
                                                      if(param1.finishParticleSize.length() == 1)
                                                      {
                                                         addr227:
                                                         this.§^!n§ = this.§>o§(param1.finishParticleSize);
                                                         §§push(this);
                                                         §§push(this.§^!n§);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(param2.height);
                                                            if(!_loc3_)
                                                            {
                                                               addr268:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§push(param2.width);
                                                               }
                                                               §§pop().§?!C§ = §§pop();
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr276:
                                                                  if(param1.FinishParticleSizeVariance.length() == 1)
                                                                  {
                                                                     this.§?!b§ = this.§>o§(param1.FinishParticleSizeVariance);
                                                                     §§push(this);
                                                                     §§push(this.§?!b§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(param2.height);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              addr306:
                                                                              §§push(§§pop() / param2.width);
                                                                           }
                                                                           §§pop().§,!V§ = §§pop();
                                                                           addr308:
                                                                           if(param1.finishParticleSizeX.length() == 1)
                                                                           {
                                                                              this.§^!n§ = this.§>o§(param1.finishParticleSizeX);
                                                                           }
                                                                           if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 this.§?!b§ = this.§>o§(param1.FinishParticleSizeVarianceX);
                                                                              }
                                                                              addr368:
                                                                              this.§`2§ = deg2rad(this.§>o§(param1.angle));
                                                                              this.§7![§ = deg2rad(this.§>o§(param1.angleVariance));
                                                                              addr384:
                                                                              this.§ 2§ = this.§>o§(param1.speed);
                                                                              if(_loc4_)
                                                                              {
                                                                                 this.§!]§ = this.§>o§(param1.speedVariance);
                                                                              }
                                                                              this.§]!%§ = this.§>o§(param1.radialAcceleration);
                                                                              this.§%!S§ = this.§>o§(param1.tangentialAcceleration);
                                                                              this.§&F§ = this.§>o§(param1.maxRadius);
                                                                              if(_loc4_)
                                                                              {
                                                                                 this.§-v§ = this.§>o§(param1.maxRadiusVariance);
                                                                                 this.§3!8§ = this.§>o§(param1.minRadius);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    this.§[!!§ = deg2rad(this.§>o§(param1.rotatePerSecond));
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       this.§8!S§ = deg2rad(this.§>o§(param1.rotatePerSecondVariance));
                                                                                       this.§,!G§ = this.§7k§(param1.startColor);
                                                                                       this.§^!b§ = this.§7k§(param1.startColorVariance);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr474:
                                                                                          this.§8!J§ = this.§7k§(param1.finishColor);
                                                                                          this.§4!9§ = this.§7k§(param1.finishColorVariance);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §;!J§ = this.§]5§(param1.blendFuncSource);
                                                                                             §@V§ = this.§]5§(param1.blendFuncDestination);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§goto(addr512);
                                                                                             }
                                                                                             §&A§ = this.§>o§(param1.emissionVariance);
                                                                                          }
                                                                                          addr512:
                                                                                          §'!L§ = this.§ n§(param1.textureSmoothing);
                                                                                          §§goto(addr518);
                                                                                       }
                                                                                       addr518:
                                                                                       if(param1.emissionVariance.length == 1)
                                                                                       {
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr512);
                                                                           }
                                                                           if(param1.finishParticleSizeY.length() == 1)
                                                                           {
                                                                              addr337:
                                                                              this.§?!C§ = this.§>o§(param1.finishParticleSizeY);
                                                                           }
                                                                           if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                           {
                                                                              if(!(_loc3_ && param2))
                                                                              {
                                                                                 this.§,!V§ = this.§>o§(param1.FinishParticleSizeVarianceY);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    §§goto(addr368);
                                                                                 }
                                                                                 §§goto(addr512);
                                                                              }
                                                                              §§goto(addr474);
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            §§push(§§pop() / §§pop());
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   §§goto(addr512);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr474);
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr337);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§push(§§pop() / §§pop());
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr368);
                        }
                     }
                     §§goto(addr131);
                  }
               }
               §§goto(addr185);
            }
            §§goto(addr368);
         }
         §§goto(addr227);
      }
      
      protected function §?U§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §>o§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §&!h§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §7k§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc4_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            if(_loc3_ || _loc2_)
            {
               addr46:
               _loc2_.green = parseFloat(param1.attribute("green"));
               if(!(_loc4_ && param1))
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  if(_loc3_ || param1)
                  {
                     addr84:
                     _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                  }
                  return _loc2_;
               }
            }
            §§goto(addr84);
         }
         §§goto(addr46);
      }
      
      protected function §]5§(param1:XMLList) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§?U§(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && this))
         {
            var _loc3_:* = §§pop();
            §§push(0);
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        addr248:
                        switch(0)
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
                        addr137:
                        §§goto(addr248);
                        §§push(1);
                     }
                     §§goto(addr248);
                  }
                  else
                  {
                     §§push(1);
                     if(_loc4_ || this)
                     {
                        if(§§pop() === _loc3_)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr137);
                           }
                           else
                           {
                              addr178:
                              §§push(5);
                              if(!(_loc5_ && this))
                              {
                                 addr186:
                              }
                              else
                              {
                                 addr190:
                                 if(§§pop() === _loc3_)
                                 {
                                    addr192:
                                    §§goto(addr248);
                                    §§push(6);
                                 }
                                 else
                                 {
                                    §§push(773);
                                    if(!(_loc5_ && this))
                                    {
                                       if(§§pop() === _loc3_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(7);
                                             if(_loc5_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr223:
                                             §§push(8);
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                addr243:
                                             }
                                          }
                                          §§goto(addr248);
                                       }
                                       else
                                       {
                                          addr221:
                                          if(774 !== _loc3_)
                                          {
                                             if(775 === _loc3_)
                                             {
                                                §§push(9);
                                                if(!(_loc5_ && this))
                                                {
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr248);
                                             }
                                             else
                                             {
                                                §§goto(addr248);
                                                §§push(10);
                                             }
                                          }
                                       }
                                       §§goto(addr248);
                                    }
                                    §§goto(addr243);
                                 }
                              }
                              §§goto(addr248);
                           }
                        }
                        else
                        {
                           if(768 === _loc3_)
                           {
                              §§goto(addr248);
                              §§push(2);
                           }
                           else
                           {
                              §§push(769);
                              if(!(_loc5_ && param1))
                              {
                                 if(§§pop() === _loc3_)
                                 {
                                    §§goto(addr248);
                                    §§push(3);
                                 }
                                 else
                                 {
                                    if(770 === _loc3_)
                                    {
                                       §§push(4);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§goto(addr248);
                                       }
                                       else
                                       {
                                          §§goto(addr231);
                                       }
                                    }
                                    else if(771 === _loc3_)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§goto(addr178);
                                       }
                                       §§goto(addr192);
                                    }
                                    else
                                    {
                                       §§push(772);
                                       if(_loc4_)
                                       {
                                          §§goto(addr190);
                                       }
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr248);
                              }
                           }
                           §§goto(addr248);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr186);
                  }
               }
               §§goto(addr221);
            }
         }
         §§goto(addr248);
      }
      
      protected function § n§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§&!h§(param1));
         if(_loc3_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(§89§.§8!;§);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(_loc3_)
                              {
                                 addr69:
                                 §§push(_loc2_);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§89§.§7K§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr86:
                                       §§push(§§pop() == §§pop());
                                       if(!_loc4_)
                                       {
                                          addr89:
                                          if(!§§pop())
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                addr108:
                                                §§pop();
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr111);
                                                }
                                                §§goto(addr129);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr117);
                              }
                              addr111:
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 addr117:
                                 if(§§pop() == §89§.NONE)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_ && _loc3_)
                                       {
                                          §§goto(addr131);
                                       }
                                    }
                                    else
                                    {
                                       addr129:
                                       addr131:
                                       return §§pop();
                                       §§push(§89§.§8!;§);
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr129);
                              }
                              return §§pop();
                           }
                           §§goto(addr108);
                        }
                     }
                  }
                  §§goto(addr89);
               }
               §§goto(addr86);
            }
            §§goto(addr131);
         }
         §§goto(addr69);
      }
   }
}

import §'!B§.§+!Q§;

class PDParticle extends §+!Q§
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
