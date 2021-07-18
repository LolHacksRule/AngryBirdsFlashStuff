package §?U§
{
   import §2!-§.Texture;
   import §2!-§.§]!=§;
   import §<!M§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §&W§ extends §'!>§
   {
       
      
      private const §7O§:int = 0;
      
      private const §"!F§:int = 1;
      
      private var §>!N§:Number;
      
      private var §3!H§:int;
      
      private var §1]§:Number;
      
      private var §6;§:Number;
      
      private var §%!#§:int;
      
      private var §&3§:Number;
      
      private var §5`§:Number;
      
      private var §'t§:Number;
      
      private var §!,§:Number;
      
      private var §@!4§:Number;
      
      private var §9`§:Number;
      
      private var §%1§:Number;
      
      private var §=C§:Number;
      
      private var §=n§:Number;
      
      private var §2;§:Number;
      
      private var §'!C§:Number;
      
      private var §"!$§:Number;
      
      private var §]!V§:Number;
      
      private var §4!Y§:Number;
      
      private var §<!0§:Number;
      
      private var §9X§:Number;
      
      private var §`!B§:Number;
      
      private var §<!6§:Number;
      
      private var §6x§:Number;
      
      private var §5!G§:Number;
      
      private var §&+§:Number;
      
      private var §,z§:Number;
      
      private var §>!9§:Number;
      
      private var §-!!§:Number;
      
      private var §`!!§:Number;
      
      private var §default§:Number;
      
      private var §`!$§:ColorArgb;
      
      private var § !H§:ColorArgb;
      
      private var §-I§:ColorArgb;
      
      private var §63§:ColorArgb;
      
      public function §&W§(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            this.§#O§(param1,param2);
         }
         §§push(this.§%!#§);
         §§push(this.§&3§);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() + this.§'t§);
         }
         §§push(§§pop() / §§pop());
         if(_loc4_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            super(param2,_loc3_,this.§%!#§,§3!0§,§#!Z§);
            do
            {
               §<!8§ = false;
            }
            while(_loc5_);
            
         }
      }
      
      public function get §^m§() : int
      {
         return this.§%!#§;
      }
      
      override protected function createParticle() : §^&§
      {
         return new PDParticle();
      }
      
      private function get §34§() : Boolean
      {
         return this.§^m§ >= 20;
      }
      
      override protected function initParticle(param1:§^&§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§^&§, param2:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§'"§ - _loc3_.§>!Y§);
         if(!(_loc14_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!_loc14_)
         {
            §§push(param2);
            if(!(_loc14_ && _loc3_))
            {
               §§push(§§pop() > §§pop());
               if(!(_loc14_ && param1))
               {
                  if(§§pop())
                  {
                     if(!(_loc14_ && this))
                     {
                        §§push(param2);
                        if(_loc13_ || param1)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc14_ && param1))
                           {
                              addr107:
                              §§push(Number(§§pop()));
                              if(_loc13_ || param2)
                              {
                                 param2 = §§pop();
                                 if(_loc13_)
                                 {
                                    _loc3_.§>!Y§ += param2;
                                    while(true)
                                    {
                                       if(this.§3!H§ != this.§"!F§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          if(_loc13_ || this)
                                          {
                                             if(!_loc14_)
                                             {
                                                §§push(!§§pop());
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop65:
                                                            while(true)
                                                            {
                                                               §§push(this.§34§);
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(_loc13_ || param2)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr1205:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.x - _loc3_.startX);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr1212:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_.y - _loc3_.startY);
                                                                                                addr1181:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc13_ || param2)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                            loop89:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     §§push(0.01);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0.01);
                                                                                                                              addr1172:
                                                                                                                              loop91:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr1173:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    addr1174:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    continue loop91;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr1128);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1170:
                                                                                                                  }
                                                                                                                  §§goto(addr1172);
                                                                                                                  continue loop89;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1236);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr684);
                                                                              }
                                                                           }
                                                                           addr1204:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr1358:
                                                                        }
                                                                        §§goto(addr1359);
                                                                     }
                                                                     §§goto(addr1371);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc13_ || this))
                                                                  {
                                                                     continue loop65;
                                                                  }
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     §§goto(addr1105);
                                                                     §§push(_loc6_);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr1356:
                                                                  }
                                                                  §§goto(addr1358);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1204);
                                                   }
                                                }
                                                addr1229:
                                             }
                                             §§goto(addr1334);
                                          }
                                          §§goto(addr1229);
                                       }
                                       §§goto(addr1356);
                                       if(!(_loc13_ || param2))
                                       {
                                          continue;
                                       }
                                       §§goto(addr123);
                                    }
                                 }
                                 §§goto(addr658);
                              }
                              §§goto(addr565);
                           }
                           §§goto(addr1173);
                        }
                        §§goto(addr565);
                     }
                     §§goto(addr905);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc13_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc14_)
                        {
                           §§goto(addr107);
                        }
                        §§goto(addr960);
                     }
                  }
                  §§goto(addr1181);
               }
               §§goto(addr1205);
            }
            §§goto(addr1170);
         }
         §§goto(addr1212);
      }
      
      private function §#O§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§1]§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§6;§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§9X§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§`!B§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(_loc3_)
                     {
                        this.§3!H§ = this.§4!W§(param1.emitterType);
                        loop4:
                        while(true)
                        {
                           this.§%!#§ = this.§4!W§(param1.maxParticles);
                           loop5:
                           while(true)
                           {
                              this.§&3§ = Math.max(0.01,this.§4!G§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§5`§ = this.§4!G§(param1.particleLifespanVariance);
                                 loop7:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() == 1)
                                    {
                                       while(true)
                                       {
                                          this.§'t§ = this.§4!G§(param1.particleInterval);
                                          addr690:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr684:
                                    }
                                    else
                                    {
                                       this.§'t§ = 0;
                                       while(true)
                                       {
                                          addr124:
                                          if(!(_loc3_ || param2))
                                          {
                                             continue;
                                          }
                                          §52§ = this.§3!C§(param1.textureSmoothing);
                                          loop63:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(param1.emissionVariance.length == 1)
                                                      {
                                                         if(!(_loc3_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         addr36:
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr43:
                                                            if(_loc3_ || this)
                                                            {
                                                               addr50:
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               addr57:
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  § !7§ = this.§4!G§(param1.emissionVariance);
                                                                  continue;
                                                               }
                                                               loop17:
                                                               for(; !_loc4_; §§goto(addr57))
                                                               {
                                                                  this.§@!4§ = this.§4!G§(param1.startParticleSizeVarianceX);
                                                                  while(true)
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(param1.startParticleSizeY.length() == 1)
                                                                        {
                                                                           while(!(_loc4_ && this))
                                                                           {
                                                                              this.§9`§ = this.§4!G§(param1.startParticleSizeY);
                                                                              break loop63;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr574:
                                                                              while(true)
                                                                              {
                                                                                 if(param1.startParticleSizeVarianceX.length() == 1)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                           addr601:
                                                                           addr558:
                                                                        }
                                                                        addr535:
                                                                        while(true)
                                                                        {
                                                                           if(param1.startParticleSizeVarianceY.length() == 1)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§%1§ = this.§4!G§(param1.startParticleSizeVarianceY);
                                                                                 addr547:
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 continue loop2;
                                                                                 addr284:
                                                                                 if(!(_loc3_ || param2))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 this.§`!!§ = deg2rad(this.§4!G§(param1.rotatePerSecond));
                                                                                 loop55:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       this.§default§ = deg2rad(this.§4!G§(param1.rotatePerSecondVariance));
                                                                                       loop56:
                                                                                       while(_loc3_ || param1)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                this.§`!$§ = this.§3!R§(param1.startColor);
                                                                                                loop57:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop56;
                                                                                                   }
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      this.§ !H§ = this.§3!R§(param1.startColorVariance);
                                                                                                      addr198:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_ || param2)
                                                                                                         {
                                                                                                            this.§-I§ = this.§3!R§(param1.finishColor);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  continue loop55;
                                                                                                               }
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        this.§63§ = this.§3!R§(param1.finishColorVariance);
                                                                                                                        loop60:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ || param2)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §3!0§ = this.§!!O§(param1.blendFuncSource);
                                                                                                                                    loop61:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_ || param1)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §#!Z§ = this.§!!O§(param1.blendFuncDestination);
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       addr624:
                                                                                                                                       addr360:
                                                                                                                                       while(!(_loc4_ && param1))
                                                                                                                                       {
                                                                                                                                          this.§4!Y§ = this.§4!G§(param1.speed);
                                                                                                                                          while(_loc3_)
                                                                                                                                          {
                                                                                                                                             this.§<!0§ = this.§4!G§(param1.speedVariance);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§<!6§ = this.§4!G§(param1.radialAcceleration);
                                                                                                                                                break loop56;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop42:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                                                {
                                                                                                                                                   addr394:
                                                                                                                                                   while(_loc3_ || param1)
                                                                                                                                                   {
                                                                                                                                                      this.§'!C§ = this.§4!G§(param1.FinishParticleSizeVarianceY);
                                                                                                                                                      while(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr410:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                                            {
                                                                                                                                                               while(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  this.§2;§ = this.§4!G§(param1.finishParticleSizeY);
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                               continue loop6;
                                                                                                                                                               addr416:
                                                                                                                                                            }
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop55;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr479:
                                                                                                                                                      loop29:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(param1.FinishParticleSizeVariance.length() == 1)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§=n§ = this.§4!G§(param1.FinishParticleSizeVariance);
                                                                                                                                                               addr491:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.§=n§);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param2.height);
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        addr473:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param2.width);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§'!C§ = §§pop();
                                                                                                                                                                        loop32:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(param1.finishParticleSizeX.length() == 1)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§=C§ = this.§4!G§(param1.finishParticleSizeX);
                                                                                                                                                                                                break loop57;
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop4;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                       addr444:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr425:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§=n§ = this.§4!G§(param1.FinishParticleSizeVarianceX);
                                                                                                                                                                                             §§goto(addr437);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr431:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr410);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr438:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr670:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                    §§push(this.§!,§);
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param2.height);
                                                                                                                                                                                       if(!(_loc4_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr653:
                                                                                                                                                                                             §§push(§§pop() / param2.width);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§9`§ = §§pop();
                                                                                                                                                                                          continue loop4;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr653);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr670:
                                                                                                                                                                              }
                                                                                                                                                                              addr526:
                                                                                                                                                                           }
                                                                                                                                                                           while(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              this.§=C§ = this.§4!G§(param1.finishParticleSize);
                                                                                                                                                                              break loop32;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop19;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(this.§=C§);
                                                                                                                                                                           if(!(_loc4_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param2.height);
                                                                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr517:
                                                                                                                                                                                    §§push(§§pop() / param2.width);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§2;§ = §§pop();
                                                                                                                                                                                 continue loop29;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr517);
                                                                                                                                                                           addr277:
                                                                                                                                                                           if(!(_loc3_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr284);
                                                                                                                                                                        }
                                                                                                                                                                        addr474:
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr473);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr485:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr438);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr394);
                                                                                                                                                   }
                                                                                                                                                   addr394:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§"!$§ = deg2rad(this.§4!G§(param1.angle));
                                                                                                                                                   break loop60;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop61;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(param1.startParticleSizeX.length() == 1)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§!,§ = this.§4!G§(param1.startParticleSizeX);
                                                                                                                                                §§goto(addr601);
                                                                                                                                             }
                                                                                                                                             addr595:
                                                                                                                                          }
                                                                                                                                          §§goto(addr574);
                                                                                                                                          §§goto(addr360);
                                                                                                                                       }
                                                                                                                                       addr360:
                                                                                                                                    }
                                                                                                                                    continue loop5;
                                                                                                                                 }
                                                                                                                                 §§goto(addr547);
                                                                                                                                 §§goto(addr479);
                                                                                                                              }
                                                                                                                              §§goto(addr416);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           addr77:
                                                                                                                           if(!(_loc3_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 addr19:
                                                                                                                                 return;
                                                                                                                                 addr88:
                                                                                                                              }
                                                                                                                              §§goto(addr485);
                                                                                                                           }
                                                                                                                           loop54:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && this))
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr277);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr299:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§-!!§ = this.§4!G§(param1.minRadius);
                                                                                                                                 continue loop54;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr348);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§]!V§ = deg2rad(this.§4!G§(param1.angleVariance));
                                                                                                                           §§goto(addr360);
                                                                                                                           §§goto(addr156);
                                                                                                                        }
                                                                                                                        addr156:
                                                                                                                     }
                                                                                                                     §§goto(addr431);
                                                                                                                  }
                                                                                                                  §§goto(addr340);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§>!9§ = this.§4!G§(param1.maxRadiusVariance);
                                                                                                                  §§goto(addr299);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§@!4§);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(param2.height);
                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr622:
                                                                                                                        §§push(§§pop() / param2.width);
                                                                                                                     }
                                                                                                                     §§pop().§%1§ = §§pop();
                                                                                                                     §§goto(addr624);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr622);
                                                                                                            }
                                                                                                            addr180:
                                                                                                            addr632:
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr36);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            this.§,z§ = this.§4!G§(param1.maxRadius);
                                                                                                            §§goto(addr307);
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr198);
                                                                                                      }
                                                                                                      addr198:
                                                                                                      §§goto(addr491);
                                                                                                      addr315:
                                                                                                   }
                                                                                                   §§goto(addr444);
                                                                                                   §§goto(addr43);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr425);
                                                                                                   }
                                                                                                   §§goto(addr595);
                                                                                                   §§goto(addr117);
                                                                                                }
                                                                                                addr213:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr684);
                                                                                             }
                                                                                             §§goto(addr670);
                                                                                          }
                                                                                          §§goto(addr407);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             this.§5!G§ = this.§4!G§(param1.tangentialAcceleration);
                                                                                             §§goto(addr315);
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr227);
                                                                                       }
                                                                                       addr227:
                                                                                       §§goto(addr474);
                                                                                    }
                                                                                    §§goto(addr394);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(param1.finishParticleSize.length() == 1)
                                                                              {
                                                                                 §§goto(addr526);
                                                                              }
                                                                              §§goto(addr479);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr19);
                                                      }
                                                   }
                                                   §§goto(addr558);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr110);
                                          }
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§goto(addr535);
                                             }
                                             break;
                                             §§goto(addr50);
                                          }
                                          §§goto(addr690);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§!,§ = this.§4!G§(param1.startParticleSize);
                                       §§goto(addr670);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      protected function §4!W§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §4!G§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §^!5§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §3!R§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc4_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
         }
         do
         {
            _loc2_.green = parseFloat(param1.attribute("green"));
            do
            {
               _loc2_.blue = parseFloat(param1.attribute("blue"));
               do
               {
                  _loc2_.alpha = parseFloat(param1.attribute("alpha"));
               }
               while(!(_loc3_ || this));
               
            }
            while(!(_loc3_ || _loc3_));
            
         }
         while(!(_loc3_ || _loc2_));
         
         return _loc2_;
      }
      
      protected function §!!O§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§4!W§(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || param1)
         {
            var _loc3_:* = §§pop();
            if(!(_loc4_ && param1))
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr362:
                              if(§§pop() === _loc3_)
                              {
                                 addr364:
                                 §§push(9);
                                 if(_loc5_ || _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(10);
                              }
                           }
                           else
                           {
                              addr169:
                           }
                           addr387:
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
                           addr387:
                        }
                        else
                        {
                           addr332:
                           §§push(7);
                           if(_loc4_)
                           {
                              addr339:
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 addr342:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(8);
                                       if(_loc5_)
                                       {
                                          addr353:
                                          §§goto(addr387);
                                       }
                                       else
                                       {
                                          §§goto(addr362);
                                       }
                                    }
                                    §§goto(addr364);
                                 }
                                 else
                                 {
                                    §§push(775);
                                    if(_loc5_ || param1)
                                    {
                                       §§goto(addr362);
                                    }
                                 }
                              }
                              §§goto(addr362);
                           }
                           else
                           {
                              addr335:
                           }
                           §§goto(addr387);
                        }
                        §§goto(addr362);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc5_ || this)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || this)
                           {
                              addr196:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || param1)
                                 {
                                    §§push(1);
                                    if(_loc4_ && param1)
                                    {
                                       §§goto(addr339);
                                    }
                                 }
                                 else
                                 {
                                    addr291:
                                    §§push(5);
                                    if(_loc4_)
                                    {
                                       §§goto(addr335);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(768);
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc4_ && this))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(2);
                                             if(!_loc5_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr278:
                                             §§push(4);
                                             if(!_loc5_)
                                             {
                                             }
                                          }
                                          §§goto(addr387);
                                          §§goto(addr387);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(_loc5_ || this)
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§goto(addr387);
                                                      }
                                                      else
                                                      {
                                                         addr262:
                                                         §§push(_loc3_);
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§goto(addr278);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr291);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(771);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr288:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr291);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr332);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(772);
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr306:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    §§push(6);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                    §§goto(addr387);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr364);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(773);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr321:
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr332);
                                                                                          }
                                                                                          §§goto(addr364);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(774);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                          §§goto(addr353);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr362);
                                                                                 }
                                                                                 §§goto(addr387);
                                                                              }
                                                                              §§goto(addr387);
                                                                           }
                                                                           §§goto(addr342);
                                                                        }
                                                                     }
                                                                     §§goto(addr353);
                                                                  }
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr387);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                   }
                                                   §§goto(addr278);
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr339);
                                                }
                                             }
                                             §§goto(addr288);
                                          }
                                          §§goto(addr321);
                                       }
                                    }
                                    §§goto(addr288);
                                 }
                              }
                              §§goto(addr387);
                           }
                           §§goto(addr306);
                        }
                     }
                     §§goto(addr339);
                  }
                  §§goto(addr196);
               }
               §§goto(addr169);
            }
            §§goto(addr332);
         }
         §§goto(addr387);
      }
      
      protected function §3!C§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§^!5§(param1));
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§]!=§.§8]§);
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
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§]!=§.§=_§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                             addr116:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                loop8:
                                                while(!(_loc4_ && _loc3_))
                                                {
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(§]!=§.NONE);
                                                         if(!_loc3_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!(_loc3_ || param1))
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr88:
                                                         §§push(§§pop() == §§pop());
                                                         if(!(_loc3_ || this))
                                                         {
                                                            continue loop8;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  break;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                            §§push(§]!=§.§8]§);
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop6;
                                                            §§goto(addr88);
                                                         }
                                                      }
                                                      return §§pop();
                                                   }
                                                }
                                                continue loop4;
                                                addr121:
                                             }
                                             §§goto(addr96);
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr121);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        §§goto(addr116);
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
   }
}

import §?U§.§^&§;

class PDParticle extends §^&§
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
