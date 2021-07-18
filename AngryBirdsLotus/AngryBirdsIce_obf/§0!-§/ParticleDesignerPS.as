package §0!-§
{
   import §3!$§.deg2rad;
   import §[P§.§@!$§;
   import §[P§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §9v§
   {
       
      
      private const §[!>§:int = 0;
      
      private const §@`§:int = 1;
      
      private var §<X§:Number;
      
      private var §^q§:int;
      
      private var §-z§:Number;
      
      private var §5<§:Number;
      
      private var §'X§:int;
      
      private var §0>§:Number;
      
      private var §2C§:Number;
      
      private var §;6§:Number;
      
      private var §[A§:Number;
      
      private var §]!+§:Number;
      
      private var §`!+§:Number;
      
      private var §2!G§:Number;
      
      private var §#O§:Number;
      
      private var §4!C§:Number;
      
      private var §[z§:Number;
      
      private var § D§:Number;
      
      private var §;Y§:Number;
      
      private var §[!%§:Number;
      
      private var §?!A§:Number;
      
      private var §[m§:Number;
      
      private var §68§:Number;
      
      private var §-]§:Number;
      
      private var §[!,§:Number;
      
      private var §]S§:Number;
      
      private var §@v§:Number;
      
      private var §^]§:Number;
      
      private var §32§:Number;
      
      private var §`l§:Number;
      
      private var §0z§:Number;
      
      private var §`!!§:Number;
      
      private var §>q§:Number;
      
      private var §6!C§:ColorArgb;
      
      private var §1f§:ColorArgb;
      
      private var §`=§:ColorArgb;
      
      private var §^!>§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§^b§(param1,param2);
         }
         §§push(this.§'X§);
         §§push(this.§0>§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop() + this.§;6§);
         }
         §§push(§§pop() / §§pop());
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            super(param2,_loc3_,this.§'X§,§3k§,§9^§);
            do
            {
               §3Y§ = false;
            }
            while(!_loc5_);
            
         }
      }
      
      public function get §3D§() : int
      {
         return this.§'X§;
      }
      
      override protected function createParticle() : §9T§
      {
         return new PDParticle();
      }
      
      private function get §-D§() : Boolean
      {
         return this.§3D§ >= 20;
      }
      
      override protected function initParticle(param1:§9T§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§9T§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§6<§ - _loc3_.currentTime);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc14_)
         {
            §§push(§§pop() > param2);
            if(_loc14_)
            {
               if(§§pop())
               {
                  if(!(_loc13_ && param2))
                  {
                     §§push(param2);
                     if(!_loc13_)
                     {
                        addr70:
                        param2 = Number(§§pop());
                        if(!_loc13_)
                        {
                           _loc3_.currentTime += param2;
                           if(this.§^q§ != this.§@`§)
                           {
                              §§push(!_loc3_.skipUpdate);
                              loop65:
                              while(true)
                              {
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop());
                                    loop66:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop67:
                                          while(true)
                                          {
                                             §§pop();
                                             loop17:
                                             while(true)
                                             {
                                                §§push(!this.§-D§);
                                                addr812:
                                                if(!(_loc14_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc14_ || _loc3_)
                                                {
                                                   _loc7_ = 0.01;
                                                   addr776:
                                                   §§push(_loc5_);
                                                   §§push(_loc7_);
                                                   loop34:
                                                   while(true)
                                                   {
                                                      if(!(_loc13_ && this))
                                                      {
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            §§push(Number(§§pop() / §§pop()));
                                                            loop28:
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                               addr796:
                                                               §§push(_loc6_);
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / _loc7_);
                                                                  loop30:
                                                                  while(_loc13_ && param2)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr859:
                                                                        addr837:
                                                                        §§push(Number(_loc3_.y - _loc3_.startY));
                                                                        addr905:
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(_loc14_ || param1)
                                                                           {
                                                                              §§push(_loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_));
                                                                              while(true)
                                                                              {
                                                                                 §§push(0.01);
                                                                                 addr811:
                                                                                 addr979:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       §§goto(addr812);
                                                                                    }
                                                                                    §§goto(addr776);
                                                                                    continue loop34;
                                                                                 }
                                                                                 addr979:
                                                                                 break loop26;
                                                                              }
                                                                              addr810:
                                                                           }
                                                                           addr986:
                                                                           if(this.§-D§)
                                                                           {
                                                                              _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                              addr1010:
                                                                              §§push(_loc3_);
                                                                              §§push(_loc3_.radius);
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 §§push(_loc3_.radiusDelta);
                                                                                 if(_loc14_)
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
                                                                              §§goto(addr979);
                                                                              addr1010:
                                                                           }
                                                                           _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                           §§push(_loc3_);
                                                                           §§push(_loc3_.radius);
                                                                           if(!(_loc13_ && param2))
                                                                           {
                                                                              §§push(_loc3_.radiusDelta);
                                                                              if(!(_loc13_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * param2);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                           }
                                                                           addr942:
                                                                           §§pop().radius = §§pop();
                                                                           break;
                                                                           §§goto(addr859);
                                                                        }
                                                                        _loc3_.x = §5!A§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           _loc3_.y = §2?§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(_loc3_.radius);
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§0z§);
                                                                                 addr877:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       addr878:
                                                                                       if(!(_loc13_ && param2))
                                                                                       {
                                                                                          _loc3_.currentTime = _loc3_.§6<§;
                                                                                          while(true)
                                                                                          {
                                                                                             addr860:
                                                                                             while(true)
                                                                                             {
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.skipUpdate);
                                                                                                   loop15:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         continue loop65;
                                                                                                      }
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         continue loop66;
                                                                                                      }
                                                                                                      if(_loc14_ || _loc3_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  continue loop67;
                                                                                                               }
                                                                                                               §§pop();
                                                                                                               if(!(_loc13_ && param2))
                                                                                                               {
                                                                                                                  §§push(this.§-D§);
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr361:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc14_ || this)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr369:
                                                                                                                           §§push(param2);
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ && param2))
                                                                                                                                 {
                                                                                                                                    if(_loc14_ || this)
                                                                                                                                    {
                                                                                                                                       addr395:
                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr404:
                                                                                                                                             if(!(_loc13_ && this))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   param2 = §§pop();
                                                                                                                                                   addr413:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      break loop14;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr404);
                                                                                                                                                }
                                                                                                                                                addr411:
                                                                                                                                             }
                                                                                                                                             loop38:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   addr731:
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc3_.radialAcceleration);
                                                                                                                                                   loop32:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            _loc8_ = Number(§§pop());
                                                                                                                                                            §§push(_loc9_ * _loc3_.radialAcceleration);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               loop40:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                  _loc12_ = _loc10_;
                                                                                                                                                                  while(!(_loc13_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-_loc11_);
                                                                                                                                                                     if(!(_loc13_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop34;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc10_ = §§pop();
                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                              continue;
                                                                                                                                                                              addr706:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop34;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop40;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1010);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr724:
                                                                                                                                                            addr740:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc9_ = §§pop();
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr731);
                                                                                                                                                            addr774:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               continue loop30;
                                                                                                                                                            }
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc13_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc10_ = §§pop();
                                                                                                                                                                     _loc11_ = _loc9_;
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     continue loop38;
                                                                                                                                                                     addr761:
                                                                                                                                                                  }
                                                                                                                                                                  continue loop28;
                                                                                                                                                               }
                                                                                                                                                               continue loop29;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop32;
                                                                                                                                                      }
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr837);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1010);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr724);
                                                                                                                                       }
                                                                                                                                       §§goto(addr683);
                                                                                                                                    }
                                                                                                                                    §§goto(addr810);
                                                                                                                                 }
                                                                                                                                 §§goto(addr751);
                                                                                                                              }
                                                                                                                              §§goto(addr670);
                                                                                                                           }
                                                                                                                           §§goto(addr395);
                                                                                                                        }
                                                                                                                        break loop14;
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr521);
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         §§goto(addr357);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            §§goto(addr1023);
                                                                                                         }
                                                                                                         §§goto(addr984);
                                                                                                      }
                                                                                                   }
                                                                                                   addr1020:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr1021);
                                                                                                   }
                                                                                                   _loc3_.y += _loc3_.velocityY * param2;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                   loop3:
                                                                                                   while(!_loc13_)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                         loop46:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.colorArgb);
                                                                                                            loop47:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.colorArgb);
                                                                                                               loop48:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().red);
                                                                                                                  §§push(_loc3_.colorArgbDelta);
                                                                                                                  loop49:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().red);
                                                                                                                     if(!(_loc13_ && this))
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr206:
                                                                                                                           if(!(_loc14_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc13_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    §§pop().alpha = §§pop();
                                                                                                                                    for(; !_loc13_; _loc3_.green = _loc3_.colorArgb.green,if(_loc13_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    },if(_loc13_ && this)
                                                                                                                                    {
                                                                                                                                       loop63:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             continue loop46;
                                                                                                                                          }
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr253:
                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             addr165:
                                                                                                                                             if(_loc14_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.colorArgb);
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   if(_loc14_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().alpha);
                                                                                                                                                      §§push(_loc3_.colorArgbDelta);
                                                                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc14_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().alpha);
                                                                                                                                                            §§push(param2);
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr206);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr267:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().green = §§pop() + §§pop();
                                                                                                                                                                     if(_loc13_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc14_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                                                                        while(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.colorArgb);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().blue);
                                                                                                                                                                              addr240:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                 addr242:
                                                                                                                                                                                 while(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().blue);
                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop49;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr253);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop47;
                                                                                                                                                                        addr235:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr859);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr369);
                                                                                                                                                               }
                                                                                                                                                               addr266:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().blue = §§pop() + §§pop() * §§pop();
                                                                                                                                                               continue loop63;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr266);
                                                                                                                                                         }
                                                                                                                                                         addr264:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr242);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(!_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().green);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr264);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop48;
                                                                                                                                                      addr259:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr262);
                                                                                                                                                }
                                                                                                                                                §§goto(addr239);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr165);
                                                                                                                                                }
                                                                                                                                                addr257:
                                                                                                                                             }
                                                                                                                                             §§goto(addr259);
                                                                                                                                          }
                                                                                                                                          §§goto(addr235);
                                                                                                                                       }
                                                                                                                                       continue loop3;
                                                                                                                                    },if(!(_loc13_ && param2))
                                                                                                                                    {
                                                                                                                                       _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                       if(!(_loc13_ && this))
                                                                                                                                       {
                                                                                                                                          _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                          §§goto(addr106);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr740);
                                                                                                                                       }
                                                                                                                                    },§§goto(addr706),§§goto(addr369))
                                                                                                                                    {
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                          if(_loc14_ || param1)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr453);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr878);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr796);
                                                                                                                                 }
                                                                                                                                 §§goto(addr262);
                                                                                                                              }
                                                                                                                              §§goto(addr240);
                                                                                                                           }
                                                                                                                           §§goto(addr267);
                                                                                                                        }
                                                                                                                        addr301:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().red = §§pop() + §§pop();
                                                                                                                        if(_loc14_ || param2)
                                                                                                                        {
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              §§goto(addr257);
                                                                                                                              §§push(_loc3_.colorArgb);
                                                                                                                           }
                                                                                                                           §§goto(addr761);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        §§goto(addr301);
                                                                                                                     }
                                                                                                                     §§goto(addr413);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr359);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr889:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr1019);
                                                                                       }
                                                                                       addr1017:
                                                                                    }
                                                                                    §§goto(addr860);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr942);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr774);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr877);
                                                      }
                                                      §§goto(addr811);
                                                   }
                                                }
                                                §§goto(addr979);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          addr851:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§push(_loc3_.x - _loc3_.startX);
                                                while(true)
                                                {
                                                   §§goto(addr858);
                                                }
                                                addr857:
                                             }
                                             §§goto(addr453);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1020);
                              }
                           }
                           §§goto(addr1017);
                        }
                        §§goto(addr889);
                     }
                     §§goto(addr411);
                  }
                  §§goto(addr339);
               }
               else
               {
                  §§push(Number(_loc4_));
               }
               §§goto(addr70);
            }
            §§goto(addr851);
         }
         §§goto(addr857);
      }
      
      private function §^b§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§-z§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§5<§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§68§ = parseFloat(param1.gravity.attribute("x"));
                  this.§-]§ = parseFloat(param1.gravity.attribute("y"));
                  loop2:
                  while(true)
                  {
                     this.§^q§ = this.§@7§(param1.emitterType);
                     while(true)
                     {
                        this.§'X§ = this.§@7§(param1.maxParticles);
                        while(!_loc4_)
                        {
                           this.§0>§ = Math.max(0.01,this.§;!B§(param1.particleLifeSpan));
                           while(true)
                           {
                              this.§2C§ = this.§;!B§(param1.particleLifespanVariance);
                              loop6:
                              while(true)
                              {
                                 if(param1.particleInterval.length() == 1)
                                 {
                                    while(true)
                                    {
                                       this.§;6§ = this.§;!B§(param1.particleInterval);
                                       loop8:
                                       while(true)
                                       {
                                          this.§[A§ = this.§;!B§(param1.startParticleSize);
                                          §§push(this);
                                          §§push(this.§[A§);
                                          if(_loc3_)
                                          {
                                             §§push(param2.height);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_)
                                                {
                                                   addr557:
                                                   §§push(§§pop() / param2.width);
                                                }
                                                §§pop().§`!+§ = §§pop();
                                                loop9:
                                                while(true)
                                                {
                                                   this.§]!+§ = this.§;!B§(param1.startParticleSizeVariance);
                                                   §§push(this);
                                                   §§push(this.§]!+§);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(param2.height);
                                                      if(!_loc4_)
                                                      {
                                                         addr527:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            §§push(param2.width);
                                                         }
                                                         §§pop().§2!G§ = §§pop();
                                                         if(param1.startParticleSizeX.length() == 1)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§[A§ = this.§;!B§(param1.startParticleSizeX);
                                                            }
                                                            addr504:
                                                         }
                                                         while(true)
                                                         {
                                                            if(param1.startParticleSizeVarianceX.length() == 1)
                                                            {
                                                               this.§]!+§ = this.§;!B§(param1.startParticleSizeVarianceX);
                                                               while(true)
                                                               {
                                                               }
                                                               addr497:
                                                            }
                                                            while(true)
                                                            {
                                                               if(param1.startParticleSizeY.length() == 1)
                                                               {
                                                                  this.§`!+§ = this.§;!B§(param1.startParticleSizeY);
                                                               }
                                                               if(param1.startParticleSizeVarianceY.length() == 1)
                                                               {
                                                                  this.§2!G§ = this.§;!B§(param1.startParticleSizeVarianceY);
                                                                  while(true)
                                                                  {
                                                                     addr201:
                                                                     if(_loc4_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     this.§`!!§ = deg2rad(this.§;!B§(param1.rotatePerSecond));
                                                                     addr208:
                                                                     if(_loc3_)
                                                                     {
                                                                        this.§>q§ = deg2rad(this.§;!B§(param1.rotatePerSecondVariance));
                                                                        while(true)
                                                                        {
                                                                           this.§6!C§ = this.§2$§(param1.startColor);
                                                                           if(!_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc4_ && this)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              this.§1f§ = this.§2$§(param1.startColorVariance);
                                                                              loop35:
                                                                              while(_loc3_)
                                                                              {
                                                                                 this.§`=§ = this.§2$§(param1.finishColor);
                                                                                 continue loop2;
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ && param2))
                                                                                    {
                                                                                       if(param1.emissionVariance.length != 1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr36:
                                                                                          if(_loc3_ || param2)
                                                                                          {
                                                                                             §&E§ = this.§;!B§(param1.emissionVariance);
                                                                                             continue;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop35;
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              while(_loc3_ || this)
                                                                              {
                                                                                 this.§[!,§ = this.§;!B§(param1.radialAcceleration);
                                                                                 §§goto(addr249);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr371);
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§0z§ = this.§;!B§(param1.minRadius);
                                                                           §§goto(addr199);
                                                                           §§goto(addr179);
                                                                        }
                                                                        addr179:
                                                                        addr216:
                                                                     }
                                                                     §§goto(addr414);
                                                                  }
                                                                  addr471:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(param1.finishParticleSize.length() == 1)
                                                                  {
                                                                     addr445:
                                                                     if(_loc4_ && _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.§#O§ = this.§;!B§(param1.finishParticleSize);
                                                                     §§goto(addr458);
                                                                  }
                                                                  §§goto(addr408);
                                                                  §§goto(addr471);
                                                               }
                                                               addr574:
                                                               while(true)
                                                               {
                                                                  continue loop8;
                                                                  §§goto(addr445);
                                                               }
                                                               §§goto(addr497);
                                                            }
                                                         }
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                   }
                                                   §§goto(addr527);
                                                }
                                             }
                                          }
                                          §§goto(addr557);
                                       }
                                    }
                                    addr581:
                                 }
                                 else
                                 {
                                    this.§;6§ = 0;
                                 }
                                 §§goto(addr574);
                              }
                              while(_loc3_ || param1)
                              {
                                 this.§`l§ = this.§;!B§(param1.maxRadiusVariance);
                                 §§goto(addr216);
                                 §§goto(addr60);
                              }
                           }
                        }
                        continue loop1;
                        if(_loc4_ && this)
                        {
                           continue;
                        }
                        §9^§ = this.§8§(param1.blendFuncDestination);
                        if(_loc4_)
                        {
                           continue loop2;
                        }
                        if(!_loc4_)
                        {
                           §7!8§ = this.§]U§(param1.textureSmoothing);
                           §§goto(addr75);
                        }
                        §§goto(addr581);
                     }
                  }
               }
            }
         }
         §§goto(addr504);
      }
      
      protected function §@7§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §;!B§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §,<§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §2$§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc4_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               addr54:
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               return _loc2_;
               addr71:
            }
         }
         while(true)
         {
            _loc2_.blue = parseFloat(param1.attribute("blue"));
            while(_loc4_)
            {
               _loc2_.alpha = parseFloat(param1.attribute("alpha"));
               if(!(_loc4_ || this))
               {
                  continue;
               }
               §§goto(addr54);
            }
         }
         §§goto(addr71);
      }
      
      protected function §8§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§@7§(param1));
         if(_loc5_)
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
               §§push(_loc3_);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc4_ && _loc3_)
                        {
                           addr225:
                        }
                     }
                     else
                     {
                        addr259:
                        §§push(8);
                        if(_loc4_)
                        {
                           addr269:
                        }
                     }
                  }
                  else
                  {
                     §§push(1);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(_loc5_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              addr274:
                              switch(1)
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
                              §§push(768);
                              if(_loc5_)
                              {
                                 if(§§pop() === _loc3_)
                                 {
                                    §§push(2);
                                    if(_loc4_ && _loc2_)
                                    {
                                       addr196:
                                    }
                                    §§goto(addr274);
                                 }
                                 else
                                 {
                                    addr190:
                                    if(769 === _loc3_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(3);
                                          if(_loc5_)
                                          {
                                             §§goto(addr196);
                                          }
                                          else
                                          {
                                             addr236:
                                             §§goto(addr274);
                                          }
                                       }
                                       else
                                       {
                                          addr222:
                                          §§push(6);
                                          if(_loc5_)
                                          {
                                             §§goto(addr225);
                                          }
                                          else
                                          {
                                             §§goto(addr269);
                                          }
                                       }
                                       §§goto(addr274);
                                    }
                                    else
                                    {
                                       §§push(770);
                                       if(!_loc4_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(4);
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr274);
                                                   }
                                                   else
                                                   {
                                                      addr227:
                                                      §§push(_loc3_);
                                                      if(!_loc4_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(7);
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr259);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr248:
                                                            §§push(774);
                                                            §§push(_loc3_);
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr256:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr259);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr268:
                                                                     §§push(9);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(775);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr267:
                                                                     if(§§pop() === _loc3_)
                                                                     {
                                                                        §§goto(addr268);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr274);
                                                                        §§push(10);
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                }
                                                §§goto(addr268);
                                             }
                                             else
                                             {
                                                if(771 === _loc3_)
                                                {
                                                   addr214:
                                                   §§goto(addr274);
                                                   §§push(5);
                                                }
                                                else
                                                {
                                                   §§push(772);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc4_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            §§goto(addr222);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr227);
                                                            §§push(773);
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr274);
                                             }
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr248);
                                    }
                                 }
                                 §§goto(addr274);
                              }
                              §§goto(addr236);
                           }
                           §§goto(addr274);
                        }
                        §§goto(addr256);
                     }
                     §§goto(addr214);
                  }
                  §§goto(addr274);
               }
               §§goto(addr190);
            }
            §§goto(addr236);
         }
         §§goto(addr274);
      }
      
      protected function §]U§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§,<§(param1));
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§@!$§.§]!$§);
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
                                    §§push(§@!$§.§-b§);
                                    addr103:
                                    while(!(_loc3_ && _loc2_))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                addr128:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop();
                                                }
                                                continue loop2;
                                                addr128:
                                             }
                                             else
                                             {
                                                addr78:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr82:
                                                      if(!(_loc4_ || this))
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop5;
                                                            §§goto(addr82);
                                                         }
                                                         continue loop0;
                                                         addr133:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                §§push(§@!$§.§]!$§);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr133);
                                          }
                                          continue loop3;
                                          addr123:
                                       }
                                       §§goto(addr128);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr123);
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
   }
}

import §0!-§.§9T§;

class PDParticle extends §9T§
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
