package §;n§
{
   import §=!4§.Texture;
   import §=!4§.§`'§;
   import §^!^§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §<"5§ extends §""6§
   {
       
      
      private const §>!I§:int = 0;
      
      private const §%M§:int = 1;
      
      private var §'"4§:Number;
      
      private var §5!6§:int;
      
      private var §5§:Number;
      
      private var §0!D§:Number;
      
      private var §%!G§:int;
      
      private var §"!;§:Number;
      
      private var §]]§:Number;
      
      private var §]e§:Number;
      
      private var §"R§:Number;
      
      private var §&!"§:Number;
      
      private var §=!t§:Number;
      
      private var §,F§:Number;
      
      private var §`!5§:Number;
      
      private var §1H§:Number;
      
      private var §9,§:Number;
      
      private var §?i§:Number;
      
      private var §?!f§:Number;
      
      private var §-!-§:Number;
      
      private var §6J§:Number;
      
      private var §"3§:Number;
      
      private var §^<§:Number;
      
      private var §9!3§:Number;
      
      private var §2q§:Number;
      
      private var §!3§:Number;
      
      private var §8!§:Number;
      
      private var §#R§:Number;
      
      private var §96§:Number;
      
      private var §,x§:Number;
      
      private var §[!T§:Number;
      
      private var §"!#§:Number;
      
      private var §9!6§:Number;
      
      private var §8n§:ColorArgb;
      
      private var §;!s§:ColorArgb;
      
      private var § L§:ColorArgb;
      
      private var §`"-§:ColorArgb;
      
      public function §<"5§(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§1!'§(param1,param2);
         }
         §§push(this.§%!G§);
         §§push(this.§"!;§);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() + this.§]e§);
         }
         §§push(§§pop() / §§pop());
         if(_loc4_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            super(param2,_loc3_,this.§%!G§,§+!R§,§,!D§);
            do
            {
               §40§ = false;
            }
            while(_loc5_ && param2);
            
         }
      }
      
      public function get §#!f§() : int
      {
         return this.§%!G§;
      }
      
      override protected function createParticle() : §#H§
      {
         return new PDParticle();
      }
      
      private function get §8!%§() : Boolean
      {
         return this.§#!f§ >= 20;
      }
      
      override protected function initParticle(param1:§#H§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§#H§, param2:Number) : void
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
         §§push(_loc3_.§ "-§ - _loc3_.§[Q§);
         if(!(_loc14_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc14_ && param2))
         {
            §§push(param2);
            if(_loc13_)
            {
               §§push(§§pop() > §§pop());
               if(_loc13_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        §§push(param2);
                        if(!_loc14_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc13_)
                           {
                              addr92:
                              §§push(Number(§§pop()));
                              if(!_loc14_)
                              {
                                 param2 = §§pop();
                                 if(!_loc14_)
                                 {
                                    _loc3_.§[Q§ += param2;
                                    loop0:
                                    while(true)
                                    {
                                       if(this.§5!6§ != this.§%M§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          loop1:
                                          while(true)
                                          {
                                             if(!_loc14_)
                                             {
                                                §§push(!§§pop());
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(_loc13_ || this)
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
                                                                  if(_loc13_ || _loc3_)
                                                                  {
                                                                     §§push(this.§8!%§);
                                                                     continue loop2;
                                                                  }
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        §§push(_loc3_.radius);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(_loc3_.radiusDelta);
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(§§pop() * param2);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(§§pop() * 2);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§pop().radius = §§pop();
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              _loc3_.x = §1K§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 _loc3_.y = §&!U§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                 loop17:
                                                                                 for(; !_loc14_; if(!(_loc13_ || param2))
                                                                                 {
                                                                                    continue;
                                                                                 },_loc3_.green = _loc3_.colorArgb.green,§§goto(addr182))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.radius);
                                                                                       loop118:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§[!T§);
                                                                                          loop119:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                addr1237:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_.§[Q§ = _loc3_.§ "-§;
                                                                                                   addr1241:
                                                                                                   while(!_loc14_)
                                                                                                   {
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                addr1237:
                                                                                             }
                                                                                             loop115:
                                                                                             while(true)
                                                                                             {
                                                                                                loop39:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.skipUpdate);
                                                                                                   if(!(_loc14_ && param2))
                                                                                                   {
                                                                                                      addr564:
                                                                                                      §§push(!§§pop());
                                                                                                      while(!(_loc14_ && _loc3_))
                                                                                                      {
                                                                                                         if(!(_loc14_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc13_ || param1))
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr478:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        loop133:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           §§push(_loc3_.skipUpdate);
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                           }
                                                                                                                           §§pop().skipUpdate = §§pop();
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc13_ || this)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                              }
                                                                                                                              addr844:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              loop80:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       addr136:
                                                                                                                                       if(!(_loc14_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop133;
                                                                                                                                       }
                                                                                                                                       loop76:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc13_ || param1)
                                                                                                                                          {
                                                                                                                                             _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                             loop77:
                                                                                                                                             while(!_loc14_)
                                                                                                                                             {
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         continue loop17;
                                                                                                                                                      }
                                                                                                                                                      addr1126:
                                                                                                                                                      if(_loc13_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc14_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     loop93:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc13_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc10_ = §§pop();
                                                                                                                                                                           loop99:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              addr1080:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 loop86:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc14_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                                                                          loop100:
                                                                                                                                                                                          while(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                loop94:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc13_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop27:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                                                                         addr1156:
                                                                                                                                                                                                         loop28:
                                                                                                                                                                                                         while(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(0.01);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0.01);
                                                                                                                                                                                                                        addr1168:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           addr1169:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                                                                              addr1170:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1167:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1136:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     addr1138:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                        addr1139:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                           addr1140:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              addr1141:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                                                                                                                 addr1142:
                                                                                                                                                                                                                                 loop98:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                    addr1122:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                       addr1123:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                          addr1124:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             addr1125:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                                                                                                                §§goto(addr1126);
                                                                                                                                                                                                                                                continue loop93;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop98;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop98;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1166:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  addr1203:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc5_ = §§pop();
                                                                                                                                                                                                                     addr1204:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_.y - _loc3_.startY);
                                                                                                                                                                                                                        break loop28;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1202:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            loop24:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc6_ = §§pop();
                                                                                                                                                                                                               loop25:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop27;
                                                                                                                                                                                                                     addr917:
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop123:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr946:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!(_loc14_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc14_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                                                                       addr954:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc13_ || param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§8!%§);
                                                                                                                                                                                                                                             loop81:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                                                                   §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                   if(_loc13_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                                                                      if(_loc13_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§^<§);
                                                                                                                                                                                                                                                         if(_loc13_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                            if(_loc13_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr757:
                                                                                                                                                                                                                                                               addr758:
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr755:
                                                                                                                                                                                                                                                                  §§push(§§pop() + _loc10_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc14_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop100;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                                                                     §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                     if(_loc13_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(param2);
                                                                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§9!3§);
                                                                                                                                                                                                                                                                           if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                                                                              if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr702:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                 break loop80;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr702);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr896:
                                                                                                                                                                                                                                                                  if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                                                                     §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                     if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(2 * param2);
                                                                                                                                                                                                                                                                        if(_loc13_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§9!3§);
                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr842:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr840:
                                                                                                                                                                                                                                                                                    §§push(§§pop() + _loc11_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr844);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr840);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr842);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr623:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                                                                                                                                              loop38:
                                                                                                                                                                                                                                                                              while(!(_loc14_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop14;
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr493:
                                                                                                                                                                                                                                                                                          §§push(this.§8!%§);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr587:
                                                                                                                                                                                                                                                                                             addr587:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                      break loop76;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop81;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop81;
                                                                                                                                                                                                                                                                                             §§goto(addr493);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                                                                                                                          addr495:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop38;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr623:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1204);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     loop101:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                                                                        addr1024:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                                 while(_loc13_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1040:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          loop92:
                                                                                                                                                                                                                                                                                          while(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             loop108:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop92;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1020:
                                                                                                                                                                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                                     addr975:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop119;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        while(_loc13_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           addr1076:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                              continue loop101;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1140);
                                                                                                                                                                                                                                                                                                                           break loop94;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop123;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop119;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr973:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc14_ && this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop86;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr989:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop5;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop108;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr917);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1168);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1124);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr981:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop86;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr978);
                                                                                                                                                                                                                                                                                                         §§goto(addr1020);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1021:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1156);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1136);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1076);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                                                                                                                          addr1043:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop93;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1166);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop94;
                                                                                                                                                                                                                                                                                 addr1035:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1169);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1140);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr788:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr755);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr757);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr758);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr849:
                                                                                                                                                                                                                                                if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                                                                   §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                   if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(2 * param2);
                                                                                                                                                                                                                                                      if(_loc13_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§^<§);
                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr894:
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr892:
                                                                                                                                                                                                                                                                  §§push(§§pop() + _loc10_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                               §§goto(addr896);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr892);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr894);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1021);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr963:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                                                                §§push(_loc3_.radius);
                                                                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                   if(_loc13_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * param2);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().radius = §§pop();
                                                                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1304:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§8!%§);
                                                                                                                                                                                                                                             addr1327:
                                                                                                                                                                                                                                             loop10:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                                                                addr1328:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1329:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop17;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop115;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr954:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1024);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr946:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1139);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1035);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr975);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1123);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1075);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1138);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1122);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop99;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1119:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1125);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1203);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1141);
                                                                                                                                                            }
                                                                                                                                                            addr1096:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.skipUpdate);
                                                                                                                                                            addr1353:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               addr1354:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  addr1355:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           §§goto(addr1367);
                                                                                                                                                                        }
                                                                                                                                                                        addr1366:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1328);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1351:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1142);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr644:
                                                                                                                                                      if(!(_loc13_ || this))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr849);
                                                                                                                                                      }
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr623);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1202);
                                                                                                                                                            }
                                                                                                                                                            addr1197:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1170);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(!(_loc14_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(param2);
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * 2);
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  addr525:
                                                                                                                                                                  if(!(_loc14_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc13_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop118;
                                                                                                                                                                        }
                                                                                                                                                                        addr542:
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           param2 = §§pop();
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc14_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                                                    addr443:
                                                                                                                                                                                    while(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                                                          break loop77;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr989);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr757);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr433:
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                              addr423:
                                                                                                                                                                              if(_loc14_ && this)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.colorArgb);
                                                                                                                                                                                 loop50:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_.colorArgb);
                                                                                                                                                                                    addr397:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().red);
                                                                                                                                                                                       addr398:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                          addr400:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().red);
                                                                                                                                                                                             addr401:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                addr402:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   addr403:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      addr404:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().red = §§pop();
                                                                                                                                                                                                         addr405:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc3_.colorArgb);
                                                                                                                                                                                                            continue loop50;
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
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr479);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1167);
                                                                                                                                                                           addr545:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr978);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1040);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr946);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr542);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr981);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr906);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr525);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1237);
                                                                                                                                                   addr507:
                                                                                                                                                }
                                                                                                                                                §§goto(addr946);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc13_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr423);
                                                                                                                                                }
                                                                                                                                                §§goto(addr443);
                                                                                                                                             }
                                                                                                                                             §§goto(addr545);
                                                                                                                                             addr203:
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                          §§goto(addr136);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§8!%§);
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                          §§goto(addr495);
                                                                                                                                          §§goto(addr292);
                                                                                                                                       }
                                                                                                                                       addr292:
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    §§goto(addr203);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc14_ && param2))
                                                                                                                                       {
                                                                                                                                          §§goto(addr159);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(_loc13_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          addr182:
                                                                                                                                       }
                                                                                                                                       continue loop80;
                                                                                                                                    }
                                                                                                                                    §§goto(addr954);
                                                                                                                                    addr152:
                                                                                                                                 }
                                                                                                                                 §§goto(addr405);
                                                                                                                              }
                                                                                                                              if(!(_loc14_ && this))
                                                                                                                              {
                                                                                                                                 _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                 §§goto(addr644);
                                                                                                                              }
                                                                                                                              §§goto(addr1119);
                                                                                                                           }
                                                                                                                           §§goto(addr788);
                                                                                                                        }
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     §§goto(addr479);
                                                                                                                  }
                                                                                                                  addr470:
                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr1366);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr587);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               break loop15;
                                                                                                            }
                                                                                                            _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                            §§goto(addr1304);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr1197);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr623);
                                                                                                               }
                                                                                                            }
                                                                                                            addr1195:
                                                                                                         }
                                                                                                         §§goto(addr1353);
                                                                                                         §§goto(addr564);
                                                                                                      }
                                                                                                      addr564:
                                                                                                      addr1193:
                                                                                                   }
                                                                                                   §§goto(addr587);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr1332);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1195);
                                                      }
                                                      §§goto(addr1355);
                                                   }
                                                }
                                             }
                                             §§goto(addr1329);
                                          }
                                       }
                                       §§goto(addr1351);
                                    }
                                 }
                                 §§goto(addr1258);
                              }
                              §§goto(addr1050);
                           }
                           §§goto(addr973);
                        }
                        §§goto(addr1122);
                     }
                     §§goto(addr1237);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!(_loc14_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc14_)
                        {
                           §§goto(addr92);
                        }
                        §§goto(addr924);
                     }
                  }
                  §§goto(addr988);
               }
               §§goto(addr478);
            }
            §§goto(addr1139);
         }
         §§goto(addr980);
      }
      
      private function §1!'§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§5§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§0!D§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§^<§ = parseFloat(param1.gravity.attribute("x"));
                  while(true)
                  {
                     this.§9!3§ = parseFloat(param1.gravity.attribute("y"));
                     loop30:
                     while(!(_loc3_ && param2))
                     {
                        §§push(this);
                        §§push(this.§1H§);
                        if(_loc4_)
                        {
                           §§push(param2.height);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_ || this)
                              {
                                 addr504:
                                 §§push(§§pop() / param2.width);
                              }
                              §§pop().§?i§ = §§pop();
                              loop31:
                              while(true)
                              {
                                 loop32:
                                 while(true)
                                 {
                                    if(param1.finishParticleSizeX.length() == 1)
                                    {
                                       continue loop31;
                                    }
                                    loop35:
                                    while(true)
                                    {
                                       if(param1.FinishParticleSizeVarianceX.length() == 1)
                                       {
                                          loop36:
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                this.§1H§ = this.§ !L§(param1.FinishParticleSizeVarianceX);
                                                loop37:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         if(param1.finishParticleSizeY.length() == 1)
                                                         {
                                                            loop39:
                                                            while(true)
                                                            {
                                                               this.§9,§ = this.§ !L§(param1.finishParticleSizeY);
                                                               loop40:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§?i§ = this.§ !L§(param1.FinishParticleSizeVarianceY);
                                                                                    addr384:
                                                                                    while(_loc4_)
                                                                                    {
                                                                                    }
                                                                                    continue loop37;
                                                                                 }
                                                                                 addr378:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§?!f§ = deg2rad(this.§ !L§(param1.angle));
                                                                                 loop45:
                                                                                 for(; _loc4_ || this; while(_loc4_ || _loc3_)
                                                                                 {
                                                                                    this.§96§ = this.§ !L§(param1.maxRadius);
                                                                                    §§goto(addr238);
                                                                                 })
                                                                                 {
                                                                                    this.§-!-§ = deg2rad(this.§ !L§(param1.angleVariance));
                                                                                    loop46:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          this.§6J§ = this.§ !L§(param1.speed);
                                                                                          loop47:
                                                                                          for(; _loc4_ || _loc3_; while(true)
                                                                                          {
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                continue loop46;
                                                                                             }
                                                                                             continue loop47;
                                                                                          },continue loop46)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             this.§"3§ = this.§ !L§(param1.speedVariance);
                                                                                             loop48:
                                                                                             for(; !(_loc3_ && param1); if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             },if(!_loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§goto(addr20);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr662);
                                                                                                }
                                                                                             },§§goto(addr594))
                                                                                             {
                                                                                                addr304:
                                                                                                if(!(_loc3_ && param2))
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   addr313:
                                                                                                   if(_loc4_ || param1)
                                                                                                   {
                                                                                                      this.§2q§ = this.§ !L§(param1.radialAcceleration);
                                                                                                      while(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         this.§8!§ = this.§ !L§(param1.tangentialAcceleration);
                                                                                                         continue loop45;
                                                                                                      }
                                                                                                      loop17:
                                                                                                      for(; _loc4_; §§goto(addr282))
                                                                                                      {
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(param1.startParticleSizeY.length() == 1)
                                                                                                            {
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     this.§=!t§ = this.§ !L§(param1.startParticleSizeY);
                                                                                                                     loop20:
                                                                                                                     while(_loc4_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(param1.startParticleSizeVarianceY.length() == 1)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§,F§ = this.§ !L§(param1.startParticleSizeVarianceY);
                                                                                                                                 break loop40;
                                                                                                                              }
                                                                                                                              addr581:
                                                                                                                           }
                                                                                                                           addr560:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.finishParticleSize.length() == 1)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§`!5§ = this.§ !L§(param1.finishParticleSize);
                                                                                                                                    addr572:
                                                                                                                                    addr773:
                                                                                                                                    while(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(this.§`!5§);
                                                                                                                                       if(!(_loc3_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(param2.height);
                                                                                                                                          if(_loc4_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc4_ || this)
                                                                                                                                             {
                                                                                                                                                addr557:
                                                                                                                                                §§push(§§pop() / param2.width);
                                                                                                                                             }
                                                                                                                                             §§pop().§9,§ = §§pop();
                                                                                                                                             loop27:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr507:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(param1.FinishParticleSizeVariance.length() != 1)
                                                                                                                                                   {
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§1H§ = this.§ !L§(param1.FinishParticleSizeVariance);
                                                                                                                                                      continue loop30;
                                                                                                                                                      addr89:
                                                                                                                                                      if(!(_loc4_ || param2))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(param1.emissionVariance.length == 1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr37:
                                                                                                                                                            if(_loc4_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr46:
                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §>!u§ = this.§ !L§(param1.emissionVariance);
                                                                                                                                                                     addr59:
                                                                                                                                                                     if(_loc4_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop48;
                                                                                                                                                                     }
                                                                                                                                                                     addr670:
                                                                                                                                                                     loop55:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              this.§8n§ = this.§9!,§(param1.startColor);
                                                                                                                                                                              loop56:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§;!s§ = this.§9!,§(param1.startColorVariance);
                                                                                                                                                                                 loop57:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                    }
                                                                                                                                                                                    this.§ L§ = this.§9!,§(param1.finishColor);
                                                                                                                                                                                    loop58:
                                                                                                                                                                                    while(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§`"-§ = this.§9!,§(param1.finishColorVariance);
                                                                                                                                                                                       loop59:
                                                                                                                                                                                       while(_loc4_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §+!R§ = this.§@!p§(param1.blendFuncSource);
                                                                                                                                                                                          loop60:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc3_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                      addr104:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §,!D§ = this.§@!p§(param1.blendFuncDestination);
                                                                                                                                                                                                   while(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §<!Z§ = this.§'§(param1.textureSmoothing);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop60;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr89);
                                                                                                                                                                                                         §§goto(addr37);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      return;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop56;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop58;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop59;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop57;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(!(_loc3_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§9!6§ = deg2rad(this.§ !L§(param1.rotatePerSecondVariance));
                                                                                                                                                                                          continue loop55;
                                                                                                                                                                                          §§goto(addr133);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr133:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   addr207:
                                                                                                                                                                                                }
                                                                                                                                                                                                this.§[!T§ = this.§ !L§(param1.minRadius);
                                                                                                                                                                                                while(_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                   §§goto(addr46);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop47;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop17;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop45;
                                                                                                                                                                                          §§goto(addr192);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr192:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§%!G§ = this.§#C§(param1.maxParticles);
                                                                                                                                                                                          break loop17;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr378);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop20;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§&!"§);
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param2.height);
                                                                                                                                                                           if(_loc4_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              addr661:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc4_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param2.width);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§,F§ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(param1.startParticleSizeX.length() == 1)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§"R§ = this.§ !L§(param1.startParticleSizeX);
                                                                                                                                                                                       break loop19;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr628:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr605:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(param1.startParticleSizeVarianceX.length() == 1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§&!"§ = this.§ !L§(param1.startParticleSizeVarianceX);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr662:
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr661);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr207);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr104);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr85);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr59);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr20);
                                                                                                                                                   }
                                                                                                                                                   continue loop27;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr559:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr557);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§5!6§ = this.§#C§(param1.emitterType);
                                                                                                                                       §§goto(addr763);
                                                                                                                                    }
                                                                                                                                    continue loop36;
                                                                                                                                 }
                                                                                                                                 addr566:
                                                                                                                              }
                                                                                                                              §§goto(addr507);
                                                                                                                              break loop40;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§]]§ = this.§ !L§(param1.particleLifespanVariance);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(param1.particleInterval.length() != 1)
                                                                                                                           {
                                                                                                                              this.§]e§ = 0;
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§]e§ = this.§ !L§(param1.particleInterval);
                                                                                                                              break loop37;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr747:
                                                                                                                  }
                                                                                                                  §§goto(addr628);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr605);
                                                                                                               }
                                                                                                               addr634:
                                                                                                               addr594:
                                                                                                            }
                                                                                                            §§goto(addr575);
                                                                                                         }
                                                                                                      }
                                                                                                      addr282:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§"!;§ = Math.max(0.01,this.§ !L§(param1.particleLifeSpan));
                                                                                                         §§goto(addr747);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr559);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ || param2)
                                                                                                      {
                                                                                                         continue loop35;
                                                                                                      }
                                                                                                      §§goto(addr304);
                                                                                                   }
                                                                                                   addr471:
                                                                                                }
                                                                                                §§goto(addr634);
                                                                                             }
                                                                                             §§goto(addr384);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.§&!"§ = this.§ !L§(param1.startParticleSizeVariance);
                                                                                             §§goto(addr670);
                                                                                             §§goto(addr328);
                                                                                          }
                                                                                          addr328:
                                                                                       }
                                                                                       break loop37;
                                                                                       if(!(_loc4_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc3_ && _loc3_)
                                                                                       {
                                                                                          continue loop31;
                                                                                       }
                                                                                       this.§,x§ = this.§ !L§(param1.maxRadiusVariance);
                                                                                       §§goto(addr224);
                                                                                    }
                                                                                 }
                                                                                 break loop40;
                                                                              }
                                                                           }
                                                                           addr372:
                                                                        }
                                                                        §§goto(addr708);
                                                                     }
                                                                     §§goto(addr701);
                                                                  }
                                                                  §§goto(addr581);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr560);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr372);
                                                      }
                                                      addr387:
                                                   }
                                                   §§goto(addr722);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr694);
                                                }
                                             }
                                             §§goto(addr566);
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr387);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr504);
                     }
                  }
               }
            }
         }
         §§goto(addr773);
      }
      
      protected function §#C§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function § !L§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §1>§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9!,§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc4_ || this)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               addr74:
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
               if(_loc4_)
               {
                  return _loc2_;
               }
            }
            §§goto(addr74);
         }
      }
      
      protected function §@!p§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§#C§(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc4_ && _loc3_))
         {
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               §§push(0);
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           §§push(0);
                           if(!(_loc5_ || this))
                           {
                              addr268:
                           }
                        }
                        else
                        {
                           addr301:
                           §§push(5);
                           if(_loc4_ && _loc2_)
                           {
                              addr360:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(1);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr412:
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
                                       addr412:
                                    }
                                    else
                                    {
                                       addr290:
                                       §§push(_loc3_);
                                       if(!(_loc4_ && this))
                                       {
                                          addr298:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr301);
                                             }
                                             else
                                             {
                                                addr394:
                                                §§push(9);
                                                if(!_loc4_)
                                                {
                                                   addr407:
                                                }
                                                §§goto(addr412);
                                             }
                                          }
                                          else
                                          {
                                             §§push(772);
                                             if(!(_loc4_ && param1))
                                             {
                                                addr318:
                                                §§push(_loc3_);
                                                if(_loc5_ || param1)
                                                {
                                                   addr326:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(6);
                                                         if(_loc5_ || param1)
                                                         {
                                                         }
                                                         §§goto(addr412);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr394);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(773);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr346:
                                                         §§push(_loc3_);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            addr354:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr357:
                                                                  §§push(7);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr360);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr369:
                                                                     §§push(_loc3_);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        addr377:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              addr380:
                                                                              §§push(8);
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 addr388:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr392:
                                                                                 if(§§pop() !== _loc3_)
                                                                                 {
                                                                                    §§goto(addr412);
                                                                                    §§push(10);
                                                                                 }
                                                                              }
                                                                              §§goto(addr412);
                                                                           }
                                                                           §§goto(addr394);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(775);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr392);
                                                                           }
                                                                           §§goto(addr412);
                                                                        }
                                                                     }
                                                                     §§goto(addr392);
                                                                  }
                                                               }
                                                               §§goto(addr380);
                                                            }
                                                            else
                                                            {
                                                               §§push(774);
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§goto(addr369);
                                                               }
                                                               §§goto(addr412);
                                                            }
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§goto(addr412);
                                                }
                                                §§goto(addr377);
                                             }
                                          }
                                          §§goto(addr360);
                                       }
                                       §§goto(addr326);
                                    }
                                    §§goto(addr412);
                                 }
                                 §§goto(addr357);
                              }
                              else
                              {
                                 §§push(768);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc4_ && param1))
                                    {
                                       addr229:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             §§push(2);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr412);
                                             }
                                             else
                                             {
                                                §§goto(addr388);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr357);
                                          }
                                          §§goto(addr412);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(_loc5_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(3);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§goto(addr268);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr407);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr412);
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(4);
                                                               if(_loc5_ || this)
                                                               {
                                                               }
                                                               §§goto(addr412);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr380);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         §§goto(addr412);
                                                      }
                                                      §§goto(addr298);
                                                   }
                                                }
                                                §§goto(addr388);
                                             }
                                             §§goto(addr354);
                                          }
                                       }
                                       §§goto(addr369);
                                    }
                                    §§goto(addr298);
                                 }
                              }
                              §§goto(addr318);
                           }
                           §§goto(addr377);
                        }
                     }
                     §§goto(addr412);
                  }
                  §§goto(addr229);
               }
               §§goto(addr407);
            }
            §§goto(addr301);
         }
         §§goto(addr412);
      }
      
      protected function §'§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§1>§(param1));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§`'§.§1!T§);
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
                                    §§push(§`'§.§&5§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc4_ || param1)
                                       {
                                          if(_loc3_ && _loc2_)
                                          {
                                             break;
                                             addr110:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_ && this)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                loop8:
                                                while(_loc4_ || _loc2_)
                                                {
                                                   §§pop();
                                                   while(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         addr39:
                                                         while(true)
                                                         {
                                                            §§push(§`'§.NONE);
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc3_ && this)
                                                                  {
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop2;
                                                addr120:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(_loc2_);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr128);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr27:
                                                      §§push(§`'§.§1!T§);
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr39);
                                                      }
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr27);
                                                §§goto(addr55);
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr120);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        §§goto(addr110);
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
   }
}

import §;n§.§#H§;

class PDParticle extends §#H§
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
