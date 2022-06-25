package §_-0O§
{
   import §_-UD§.deg2rad;
   import §_-z4§.Texture;
   import §_-z4§.§_-IJ§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §_-mz§
   {
       
      
      private const §_-jy§:int = 0;
      
      private const §_-13§:int = 1;
      
      private var §_-07j§:Number;
      
      private var §_-08H§:int;
      
      private var §_-fk§:Number;
      
      private var §_-00Y§:Number;
      
      private var §_-tq§:int;
      
      private var §_-sz§:Number;
      
      private var §_-m0§:Number;
      
      private var §_-IM§:Number;
      
      private var §_-00X§:Number;
      
      private var §_-tw§:Number;
      
      private var §_-aK§:Number;
      
      private var §_-Ph§:Number;
      
      private var §_-qW§:Number;
      
      private var §_-k8§:Number;
      
      private var §_-0BL§:Number;
      
      private var §_-he§:Number;
      
      private var §_-038§:Number;
      
      private var §_-iP§:Number;
      
      private var §_-0D2§:Number;
      
      private var §_-gi§:Number;
      
      private var §_-Eu§:Number;
      
      private var §_-yi§:Number;
      
      private var §_-0S§:Number;
      
      private var §_-Q5§:Number;
      
      private var §_-xj§:Number;
      
      private var §_-iD§:Number;
      
      private var §_-Fs§:Number;
      
      private var §_-C0§:Number;
      
      private var §_-06-§:Number;
      
      private var §_-V6§:Number;
      
      private var §_-HU§:Number;
      
      private var §_-0E§:ColorArgb;
      
      private var §_-3L§:ColorArgb;
      
      private var §_-gN§:ColorArgb;
      
      private var §_-D2§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§_-eG§(param1,param2);
         }
         §§push(this.§_-tq§);
         §§push(this.§_-sz§);
         if(_loc5_ || this)
         {
            §§push(§§pop() + this.§_-IM§);
         }
         §§push(§§pop() / §§pop());
         if(_loc5_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            super(param2,_loc3_,this.§_-tq§,§_-LL§,§_-r4§);
         }
         do
         {
            §_-XA§ = false;
         }
         while(!_loc5_);
         
      }
      
      public function get §_-cJ§() : int
      {
         return this.§_-tq§;
      }
      
      override protected function createParticle() : §_-0D8§
      {
         return new PDParticle();
      }
      
      private function get §_-Zn§() : Boolean
      {
         return this.§_-cJ§ >= 20;
      }
      
      override protected function initParticle(param1:§_-0D8§) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:PDParticle = null;
         var _loc3_:* = NaN;
         _loc2_ = param1 as PDParticle;
         if(!_loc17_)
         {
            §§push(this.§_-sz§);
            if(_loc18_)
            {
               §§push(this.§_-m0§);
               loop0:
               while(true)
               {
                  §§push(Math.random() * 2);
                  if(_loc18_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc18_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc18_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc18_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc17_)
                              {
                                 _loc3_ = §§pop();
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc18_)
                                    {
                                       §§push(0);
                                       if(_loc17_)
                                       {
                                          addr182:
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc17_ && param1))
                                          {
                                             addr190:
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          break;
                                       }
                                       if(_loc17_)
                                       {
                                          continue loop0;
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          addr123:
                                          return;
                                       }
                                       while(true)
                                       {
                                          _loc2_.alpha = 0;
                                          addr112:
                                          while(true)
                                          {
                                             _loc2_.§_-Ms§ = 0;
                                             continue loop1;
                                          }
                                          addr124:
                                       }
                                    }
                                    break;
                                 }
                                 var _loc4_:* = §§pop();
                                 §§push(this.§_-0D2§);
                                 if(_loc18_)
                                 {
                                    §§push(this.§_-gi§);
                                    if(_loc18_ || param1)
                                    {
                                       §§push(Math.random() * 2);
                                       if(!(_loc17_ && _loc3_))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc18_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!(_loc17_ && param1))
                                 {
                                    §§push(_loc2_);
                                    §§push(_loc5_);
                                    if(!(_loc17_ && param1))
                                    {
                                       §§push(§§pop() * Math.cos(_loc4_));
                                    }
                                    §§pop().velocityX = §§pop();
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       §§push(_loc5_);
                                       if(!(_loc17_ && _loc3_))
                                       {
                                          §§push(§§pop() * -Math.sin(_loc4_));
                                       }
                                       §§pop().velocityY = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          §§push(this.§_-Fs§);
                                          if(!_loc17_)
                                          {
                                             §§push(this.§_-C0§);
                                             if(_loc18_)
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
                                          §§pop().radius = §§pop();
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             §§push(this.§_-Fs§);
                                             if(_loc18_)
                                             {
                                                §§push(§§pop() / _loc3_);
                                             }
                                             §§pop().radiusDelta = §§pop();
                                             loop6:
                                             while(!_loc17_)
                                             {
                                                §§push(_loc2_);
                                                §§push(this.§_-038§);
                                                if(_loc18_ || _loc2_)
                                                {
                                                   §§push(this.§_-iP§);
                                                   if(_loc18_)
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
                                                §§pop().rotation = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   §§push(this.§_-V6§);
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      §§push(this.§_-HU§);
                                                      if(_loc18_ || param1)
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
                                                   §§pop().rotationDelta = §§pop();
                                                   loop8:
                                                   for(; !_loc17_; while(_loc18_ || this)
                                                   {
                                                      if(!_loc18_)
                                                      {
                                                         continue loop5;
                                                      }
                                                   })
                                                   {
                                                      while(true)
                                                      {
                                                         _loc2_.radialAcceleration = this.§_-0S§;
                                                         continue loop8;
                                                      }
                                                   }
                                                   continue loop6;
                                                   addr238:
                                                   if(!(_loc17_ && _loc2_))
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc2_.tangentialAcceleration = this.§_-xj§;
                                    if(!_loc17_)
                                    {
                                       §§goto(addr238);
                                    }
                                    §§goto(addr259);
                                 }
                                 §§goto(addr408);
                              }
                           }
                           §§push(this.§_-iP§);
                           if(_loc18_ || param1)
                           {
                              addr174:
                              §§push(Math.random() * 2);
                              if(_loc18_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr174);
                     }
                     break;
                  }
                  break;
               }
               §§goto(addr174);
               §§push(§§pop() - 1);
            }
            §§goto(addr190);
         }
         §§goto(addr112);
      }
      
      override protected function advanceParticle(param1:§_-0D8§, param2:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§_-8f§ - _loc3_.§_-Ms§);
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc13_)
         {
            §§push(param2);
            if(!_loc14_)
            {
               §§push(§§pop() > §§pop());
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(_loc13_ || param1)
                     {
                        §§push(param2);
                        if(_loc13_ || param2)
                        {
                           §§push(Number(§§pop()));
                           if(_loc13_)
                           {
                              addr82:
                              §§push(Number(§§pop()));
                              if(_loc13_ || param1)
                              {
                                 param2 = §§pop();
                                 if(!(_loc14_ && _loc3_))
                                 {
                                    _loc3_.§_-Ms§ += param2;
                                    loop125:
                                    while(true)
                                    {
                                       if(this.§_-08H§ != this.§_-13§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          loop96:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop98:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop99:
                                                      while(true)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            §§pop();
                                                            loop100:
                                                            while(true)
                                                            {
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  §§push(this.§_-Zn§);
                                                                  loop101:
                                                                  while(_loc13_)
                                                                  {
                                                                     addr1217:
                                                                     loop56:
                                                                     for(; _loc13_ || param1; §§goto(addr1217))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr1227:
                                                                              §§push(_loc3_.x - _loc3_.startX);
                                                                              loop89:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.y - _loc3_.startY);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc14_ && this))
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                loop0:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0.01);
                                                                                                            loop85:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0.01);
                                                                                                                     addr1186:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc14_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop89;
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           addr1195:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1185:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  addr1154:
                                                                                                                  loop81:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     loop82:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc13_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        loop69:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop70:
                                                                                                                           while(!_loc14_)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              loop75:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 loop71:
                                                                                                                                 do
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    addr1144:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       loop72:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr1146:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             continue loop69;
                                                                                                                                          }
                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr1135:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   continue loop71;
                                                                                                                                                }
                                                                                                                                                continue loop72;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1195);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(!_loc13_);
                                                                                                                                 
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 addr1140:
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 loop79:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       continue loop70;
                                                                                                                                    }
                                                                                                                                    addr1121:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop74:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                       addr1122:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             break loop74;
                                                                                                                                          }
                                                                                                                                          if(!(_loc14_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             continue loop74;
                                                                                                                                          }
                                                                                                                                          continue loop125;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop117:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-Zn§);
                                                                                                                                       addr1363:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc14_ && param2))
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                   loop103:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc14_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         §§push(_loc3_.radius);
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.radiusDelta);
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * param2);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().radius = §§pop();
                                                                                                                                                         loop104:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop105:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc3_.x = §_-7o§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                               loop106:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_.y = §_-bO§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                  loop94:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.radius);
                                                                                                                                                                     addr1257:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§_-06-§);
                                                                                                                                                                        loop8:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc3_.§_-Ms§ = _loc3_.§_-8f§;
                                                                                                                                                                                 addr1264:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1260:
                                                                                                                                                                           }
                                                                                                                                                                           loop11:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop12:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.skipUpdate);
                                                                                                                                                                                 loop13:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc13_ || this))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop99;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc13_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop96;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(_loc14_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop98;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop55:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   loop19:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§_-Zn§);
                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr508:
                                                                                                                                                                                                            if(_loc13_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop55;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop16:
                                                                                                                                                                                                         while(!(_loc14_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop17:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop19;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc14_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param2);
                                                                                                                                                                                                                     if(!(_loc14_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc13_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * 2);
                                                                                                                                                                                                                              if(_loc13_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc14_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc14_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc13_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc13_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop6;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr604:
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         param2 = §§pop();
                                                                                                                                                                                                                                                         loop18:
                                                                                                                                                                                                                                                         while(!_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc13_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr480:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                                                                                                                                        loop21:
                                                                                                                                                                                                                                                                        while(_loc13_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                                                                                                                                              loop22:
                                                                                                                                                                                                                                                                              while(!_loc14_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop106;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                    loop23:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                       loop24:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().red);
                                                                                                                                                                                                                                                                                          loop25:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                             loop26:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop().red);
                                                                                                                                                                                                                                                                                                loop27:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      loop29:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         loop30:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                                            loop31:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                               loop32:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                  addr407:
                                                                                                                                                                                                                                                                                                                  while(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop().green);
                                                                                                                                                                                                                                                                                                                     loop34:
                                                                                                                                                                                                                                                                                                                     for(; !(_loc14_ && _loc3_); if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                                                                     },§§pop().alpha = §§pop(),loop49:
                                                                                                                                                                                                                                                                                                                     while(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                                                                                        loop50:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                                                                                                                                                                                    loop51:
                                                                                                                                                                                                                                                                                                                                    while(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                                                                                                                                                          addr836:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                                                                                                                                                                             addr132:
                                                                                                                                                                                                                                                                                                                                             loop53:
                                                                                                                                                                                                                                                                                                                                             for(; _loc13_ || param1; while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§pop().skipUpdate = §§pop();
                                                                                                                                                                                                                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop50;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop53;
                                                                                                                                                                                                                                                                                                                                             },return)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop49;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop100;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1227);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                                                                                                      if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(2 * param2);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§_-yi§);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr876:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr874:
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + _loc11_);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                  break loop51;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr874);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr876);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr932:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr678:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                                                                                                                                                                                while(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1115);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr836:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1185);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1186);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                                       §§goto(addr836);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1149);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1195);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1140);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr374);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr125);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                              §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(2 * param2);
                                                                                                                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(this.§_-Eu§);
                                                                                                                                                                                                                                                                                                                                    if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                       if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr929:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                          §§goto(addr932);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr929);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              loop63:
                                                                                                                                                                                                                                                                                                                              while(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                 if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                                                             while(_loc13_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      addr1027:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1028:
                                                                                                                                                                                                                                                                                                                                                         _loc10_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                         break loop21;
                                                                                                                                                                                                                                                                                                                                                         addr978:
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc13_ || param2))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr988:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§_-Zn§);
                                                                                                                                                                                                                                                                                                                                                                  break loop17;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop75;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1121);
                                                                                                                                                                                                                                                                                                                                                            addr988:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1134);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1354);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1026:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1144);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr958:
                                                                                                                                                                                                                                                                                                                                                if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc14_ && this)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop82;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop85;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop8;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr978);
                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1077:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            while(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1042:
                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     continue loop63;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop79;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop81;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1103);
                                                                                                                                                                                                                                                                                                                                                            addr1092:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1194);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr958);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1114);
                                                                                                                                                                                                                                                                                                                                                   addr1076:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1103);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1114);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1092);
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1114);
                                                                                                                                                                                                                                                                                                                                       addr935:
                                                                                                                                                                                                                                                                                                                                       if(_loc14_ && param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr949);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1135);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1027);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1264);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     },while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop4;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                                                                                           break loop18;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1407:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.§_-Zn§);
                                                                                                                                                                                                                                                                                                                           break loop16;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     })
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                        loop35:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().green);
                                                                                                                                                                                                                                                                                                                           loop36:
                                                                                                                                                                                                                                                                                                                           while(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                                                                                                                              while(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    addr442:
                                                                                                                                                                                                                                                                                                                                    addr284:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr443:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!(_loc13_ || this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc14_ && param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr442);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop28;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop27;
                                                                                                                                                                                                                                                                                                                           loop44:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                                                 if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                                                                                                                    while(_loc13_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr433);
                                                                                                                                                                                                                                                                                                                                    addr362:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 loop46:
                                                                                                                                                                                                                                                                                                                                 while(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr374:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc14_ && param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop103;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop32;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                                                                                                                                                                      addr401:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1373:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                                                      addr1394:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * param2);
                                                                                                                                                                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * 2);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§pop().radius = §§pop();
                                                                                                                                                                                                                                                                                                                                                         addr1354:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop105;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1211);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr521:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr443);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr250:
                                                                                                                                                                                                                                                                                                                                       continue loop103;
                                                                                                                                                                                                                                                                                                                                       if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr257:
                                                                                                                                                                                                                                                                                                                                       if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop44;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop46;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr284);
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr362);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr433);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr284);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop44;
                                                                                                                                                                                                                                                                                                                                             §§goto(addr257);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr342:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop29;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop35;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop26;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop24;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr675);
                                                                                                                                                                                                                                                                                 if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                                                                                                                                    §§goto(addr132);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr836);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop18;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop104;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr935);
                                                                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1354);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr627:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1394);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1100);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc14_ && this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop94;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr678);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1122);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr988);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1121);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1077);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr935);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr978);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1146);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1114);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1060);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1039);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1042);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr604);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1028);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr977);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr604);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                     §§push(_loc3_.velocityY);
                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param2);
                                                                                                                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§_-yi§);
                                                                                                                                                                                                                           if(_loc13_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr770:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr768:
                                                                                                                                                                                                                                    §§push(§§pop() + _loc11_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                 §§goto(addr772);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr768);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr882:
                                                                                                                                                                                                               if(_loc14_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop101;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr890);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                     §§push(_loc3_.velocityX);
                                                                                                                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param2);
                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§_-Eu§);
                                                                                                                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                              if(_loc13_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr821:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr819:
                                                                                                                                                                                                                                    §§push(§§pop() + _loc10_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                 §§goto(addr823);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr819);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr821);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr480);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                            addr1359:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1360:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop117;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr508);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr521);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr103);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr519:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr882);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr663:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr519);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop56;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1405:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1359);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1360);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr663);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop56;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop94;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.skipUpdate);
                                                                                                                                                            addr1403:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               addr1404:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1401:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1405);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1373);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1403);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1404);
                                                                                                                                          continue loop117;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1121:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr1211:
                                                                                                addr1179:
                                                                                             }
                                                                                             §§goto(addr1257);
                                                                                          }
                                                                                          if(!(_loc13_ || _loc3_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr1076);
                                                                                          §§push(_loc3_.radialAcceleration);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr1232:
                                                                           }
                                                                           §§goto(addr678);
                                                                        }
                                                                     }
                                                                     §§push(!§§pop());
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr1407);
                                                                     }
                                                                  }
                                                                  continue loop98;
                                                               }
                                                               §§goto(addr1260);
                                                            }
                                                         }
                                                         §§goto(addr1363);
                                                      }
                                                   }
                                                   §§goto(addr1225);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr1401);
                                    }
                                 }
                                 §§goto(addr823);
                              }
                              §§goto(addr1232);
                           }
                        }
                        §§goto(addr1154);
                     }
                     §§goto(addr627);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!_loc14_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc13_)
                        {
                           §§goto(addr82);
                        }
                        §§goto(addr1179);
                     }
                  }
                  §§goto(addr1183);
               }
               §§goto(addr889);
            }
            §§goto(addr1026);
         }
         §§goto(addr82);
      }
      
      private function §_-eG§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-fk§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§_-00Y§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               while(true)
               {
                  this.§_-Eu§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§_-yi§ = parseFloat(param1.gravity.attribute("y"));
                     while(true)
                     {
                        this.§_-08H§ = this.§_-yb§(param1.emitterType);
                        addr733:
                        while(true)
                        {
                           this.§_-tq§ = this.§_-yb§(param1.maxParticles);
                           continue loop0;
                        }
                        addr388:
                        if(!(_loc3_ && param1))
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  §_-OP§ = this.§_-Nl§(param1.textureSmoothing);
                  §§goto(addr84);
               }
            }
         }
         §§goto(addr678);
      }
      
      protected function §_-yb§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §_-KO§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §_-dD§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §_-01U§(param1:XMLList) : ColorArgb
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
               addr84:
               while(!_loc3_)
               {
               }
            }
         }
         while(true)
         {
            _loc2_.blue = parseFloat(param1.attribute("blue"));
            while(_loc4_)
            {
               _loc2_.alpha = parseFloat(param1.attribute("alpha"));
               if(!(_loc3_ && param1))
               {
                  return _loc2_;
               }
            }
            §§goto(addr84);
         }
      }
      
      protected function §_-7N§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§_-yb§(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(0);
               if(!(_loc4_ && this))
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
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
                        }
                        else
                        {
                           addr276:
                           §§push(5);
                           if(!(_loc5_ || this))
                           {
                              addr288:
                              §§push(_loc3_);
                              if(_loc5_ || param1)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       addr304:
                                       §§push(6);
                                       if(_loc4_ && _loc2_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr332:
                                       §§push(7);
                                       if(_loc4_)
                                       {
                                          addr368:
                                       }
                                    }
                                    §§goto(addr387);
                                 }
                                 else
                                 {
                                    §§push(773);
                                    if(!_loc4_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr324:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_ || this)
                                             {
                                                §§goto(addr332);
                                             }
                                             else
                                             {
                                                addr365:
                                                §§push(8);
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr368);
                                                }
                                                §§goto(addr387);
                                             }
                                          }
                                          else
                                          {
                                             §§push(774);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                addr344:
                                                §§push(_loc3_);
                                                if(_loc5_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§goto(addr365);
                                                      }
                                                      else
                                                      {
                                                         addr374:
                                                         §§push(9);
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(775);
                                                      if(!_loc4_)
                                                      {
                                                         addr373:
                                                         if(§§pop() === _loc3_)
                                                         {
                                                            §§goto(addr374);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr387);
                                                            §§push(10);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                   }
                                                }
                                                §§goto(addr373);
                                             }
                                             addr382:
                                             §§goto(addr387);
                                          }
                                          §§goto(addr387);
                                       }
                                       §§goto(addr373);
                                    }
                                    §§goto(addr344);
                                 }
                              }
                              §§goto(addr373);
                           }
                        }
                        §§goto(addr387);
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    addr169:
                                    §§push(1);
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       addr238:
                                    }
                                    §§goto(addr387);
                                 }
                                 else
                                 {
                                    addr253:
                                    §§push(4);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr261:
                                       §§goto(addr387);
                                    }
                                    else
                                    {
                                       §§goto(addr288);
                                    }
                                 }
                                 §§goto(addr387);
                              }
                              else
                              {
                                 §§push(768);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(2);
                                             if(_loc4_ && _loc3_)
                                             {
                                             }
                                             §§goto(addr387);
                                          }
                                          else
                                          {
                                             §§goto(addr304);
                                          }
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc4_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§goto(addr238);
                                                      }
                                                      else
                                                      {
                                                         addr265:
                                                         §§push(_loc3_);
                                                         if(!_loc4_)
                                                         {
                                                            addr268:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§goto(addr276);
                                                               }
                                                               §§goto(addr304);
                                                            }
                                                            else
                                                            {
                                                               §§push(772);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr373);
                                                            }
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr288);
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr265);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr268);
                                                   }
                                                   §§goto(addr261);
                                                }
                                             }
                                             §§goto(addr324);
                                          }
                                       }
                                       §§goto(addr368);
                                    }
                                    §§goto(addr324);
                                 }
                              }
                              §§goto(addr382);
                           }
                           §§goto(addr324);
                        }
                        §§goto(addr261);
                     }
                  }
                  §§goto(addr268);
               }
               §§goto(addr373);
            }
            §§goto(addr169);
         }
         §§goto(addr387);
      }
      
      protected function §_-Nl§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-dD§(param1));
         if(!_loc4_)
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
               §§push(§_-IJ§.§_-Th§);
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
                              addr142:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr96:
                                 while(true)
                                 {
                                    §§push(§_-IJ§.§_-nO§);
                                    addr98:
                                    while(!(_loc4_ && param1))
                                    {
                                       §§push(§§pop() == §§pop());
                                       while(!(_loc4_ && this))
                                       {
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr141:
                        }
                        loop9:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_ && param1)
                           {
                              continue loop3;
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr134:
                                 loop12:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§_-IJ§.NONE);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc4_)
                                          {
                                             continue;
                                          }
                                          if(!_loc4_)
                                          {
                                             addr54:
                                             if(_loc3_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc4_ && param1)
                                                         {
                                                            continue loop12;
                                                         }
                                                         addr83:
                                                         §§push(_loc2_);
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break loop9;
                                                            }
                                                            §§goto(addr96);
                                                         }
                                                         addr83:
                                                      }
                                                      else if(_loc4_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr83);
                                                   }
                                                   §§push(§_-IJ§.§_-Th§);
                                                   if(!_loc4_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr83);
                                                   §§goto(addr54);
                                                }
                                                addr71:
                                             }
                                             else
                                             {
                                                §§goto(addr141);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr98);
                                    }
                                    §§goto(addr83);
                                 }
                              }
                           }
                           §§goto(addr71);
                        }
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr134);
      }
   }
}

import §_-0O§.§_-0D8§;

class PDParticle extends §_-0D8§
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
