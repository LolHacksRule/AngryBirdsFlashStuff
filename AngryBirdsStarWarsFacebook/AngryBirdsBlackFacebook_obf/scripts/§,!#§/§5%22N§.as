package §,!#§
{
   import §&v§.§ +§;
   import §&v§.Texture;
   import §=]§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §5"N§ extends §^"n§
   {
       
      
      private const §%!=§:int = 0;
      
      private const §+#A§:int = 1;
      
      private var §%`§:Number;
      
      private var §3r§:int;
      
      private var §5!E§:Number;
      
      private var §0"F§:Number;
      
      private var §'W§:int;
      
      private var §7!Z§:Number;
      
      private var §2!0§:Number;
      
      private var §@!$§:Number;
      
      private var §=!=§:Number;
      
      private var §>!R§:Number;
      
      private var §+!Y§:Number;
      
      private var § #=§:Number;
      
      private var §3!v§:Number;
      
      private var §0"e§:Number;
      
      private var §,"R§:Number;
      
      private var §@!"§:Number;
      
      private var §^F§:Number;
      
      private var §#"%§:Number;
      
      private var §<C§:Number;
      
      private var §8"V§:Number;
      
      private var §6"C§:Number;
      
      private var §=!]§:Number;
      
      private var §`"F§:Number;
      
      private var §>#Z§:Number;
      
      private var §0#D§:Number;
      
      private var §0#<§:Number;
      
      private var § null§:Number;
      
      private var §2"v§:Number;
      
      private var §+#C§:Number;
      
      private var §4!S§:Number;
      
      private var §@!e§:Number;
      
      private var §>"M§:ColorArgb;
      
      private var §1"%§:ColorArgb;
      
      private var §in §:ColorArgb;
      
      private var §#8§:ColorArgb;
      
      public function §5"N§(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§-R§(param1,param2);
         }
         §§push(this.§'W§);
         §§push(this.§7!Z§);
         if(_loc5_)
         {
            §§push(§§pop() + this.§@!$§);
         }
         §§push(§§pop() / §§pop());
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            super(param2,_loc3_,this.§'W§,§=#§,§8G§);
            do
            {
               §3"$§ = false;
            }
            while(!(_loc5_ || param1));
            
         }
      }
      
      public function get §0"g§() : int
      {
         return this.§'W§;
      }
      
      override protected function createParticle() : §`E§
      {
         return new PDParticle();
      }
      
      private function get §!!7§() : Boolean
      {
         return this.§0"g§ >= 20;
      }
      
      override protected function initParticle(param1:§`E§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§`E§, param2:Number) : void
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
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§,!@§ - _loc3_.currentTime);
         if(!(_loc14_ && this))
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
               if(_loc13_ || param2)
               {
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        §§push(param2);
                        if(_loc13_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc13_ || _loc3_)
                           {
                              addr97:
                              §§push(Number(§§pop()));
                              if(!_loc14_)
                              {
                                 param2 = §§pop();
                                 if(_loc13_ || this)
                                 {
                                    _loc3_.currentTime += param2;
                                    loop0:
                                    while(true)
                                    {
                                       if(this.§3r§ != this.§+#A§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          loop1:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             loop2:
                                             while(true)
                                             {
                                                if(_loc13_ || param2)
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
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               §§pop();
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(this.§!!7§);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        while(true)
                                                                        {
                                                                           loop62:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_.x += _loc3_.velocityX * param2;
                                                                                    addr681:
                                                                                    loop65:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc14_ && param1))
                                                                                       {
                                                                                          _loc3_.y += _loc3_.velocityY * param2;
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc14_ && _loc3_))
                                                                                             {
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_.skipUpdate);
                                                                                                      addr619:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         addr620:
                                                                                                         while(_loc13_)
                                                                                                         {
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            loop10:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr1402:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§!!7§);
                                                                                                                  addr1355:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     loop12:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr1358:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§!!7§);
                                                                                                                                 addr1360:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                          addr1372:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc13_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                §§push(_loc3_.radius);
                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.radiusDelta);
                                                                                                                                                   if(!_loc14_)
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
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             addr1386:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.skipUpdate);
                                                                                                                                                addr1388:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   addr1389:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      addr1390:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop10;
                                                                                                                                                         }
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1361:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          §§push(_loc3_.radius);
                                                                                                                                          if(_loc13_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.radiusDelta);
                                                                                                                                             if(!(_loc14_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * param2);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().radius = §§pop();
                                                                                                                                          addr1307:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr1270:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc3_.x = §5#`§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                addr1282:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc3_.y = §2!?§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                   addr1269:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.radius);
                                                                                                                                                      addr1249:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§+#C§);
                                                                                                                                                         addr1251:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_.currentTime = _loc3_.§,!@§;
                                                                                                                                                                  addr1256:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1252:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1320:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1358:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           addr838:
                                                                                                                           if(_loc14_ && this)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    continue loop5;
                                                                                                                                 }
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 §§push(_loc3_.velocityX);
                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(2 * param2);
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§6"C§);
                                                                                                                                       if(!(_loc14_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             addr880:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                             }
                                                                                                                                             §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc14_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc13_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      §§push(_loc3_.velocityY);
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(2 * param2);
                                                                                                                                                         if(_loc13_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§=!]§);
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  addr828:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     addr826:
                                                                                                                                                                     §§push(§§pop() + _loc11_);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                        while(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§!!7§);
                                                                                                                                                                                 while(_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr838);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop62;
                                                                                                                                                                                 addr836:
                                                                                                                                                                              }
                                                                                                                                                                              addr1212:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.x - _loc3_.startX);
                                                                                                                                                                                 addr1217:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr1218:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                                                                       addr1219:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc3_.y - _loc3_.startY);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              loop115:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr1195:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                                                                    loop80:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc14_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop115;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc14_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1173:
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                                                                             addr1175:
                                                                                                                                                                                             loop77:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0.01);
                                                                                                                                                                                                addr1176:
                                                                                                                                                                                                loop78:
                                                                                                                                                                                                while(§§pop() < §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc14_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop80;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc7_ = Number(0.01);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop78;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   addr1136:
                                                                                                                                                                                                   loop105:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      addr1137:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                            loop69:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               addr1146:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                                                                  addr1147:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                     loop72:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                        addr1114:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc14_ && _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop77;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc14_ && this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                                                                              addr1133:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                 addr1085:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    addr1086:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop72;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc14_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                                                                                                                             continue loop5;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1095:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1159);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop69;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1145:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1176);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1186);
                                                                                                                                                                                                         continue loop105;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1173);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1159:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1358);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1249);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop65;
                                                                                                                                                                        addr796:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1252);
                                                                                                                                                                  }
                                                                                                                                                                  addr830:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr826);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr828);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1372);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   loop90:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      loop91:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc14_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr1034:
                                                                                                                                                            §§push(_loc3_.radialAcceleration);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr1035:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc13_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        addr1044:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc14_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                              continue loop91;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr1043:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1175);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1320);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr1034:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         continue loop90;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1086);
                                                                                                                                             }
                                                                                                                                             addr883:
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr880);
                                                                                                                              }
                                                                                                                              addr846:
                                                                                                                           }
                                                                                                                           §§push(_loc3_);
                                                                                                                           §§push(_loc3_.velocityX);
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              §§push(param2);
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(this.§6"C§);
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!(_loc14_ && this))
                                                                                                                                    {
                                                                                                                                       addr780:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                       }
                                                                                                                                       §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          §§push(_loc3_.velocityY);
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push(param2);
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§=!]§);
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(!(_loc14_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr737:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr735:
                                                                                                                                                         §§push(§§pop() + _loc11_);
                                                                                                                                                      }
                                                                                                                                                      §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                            addr709:
                                                                                                                                                            continue loop65;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1133);
                                                                                                                                                      }
                                                                                                                                                      addr739:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr735);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr737);
                                                                                                                                       }
                                                                                                                                       addr783:
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr780);
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
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr994);
                                                                                                }
                                                                                                §§goto(addr1358);
                                                                                             }
                                                                                             §§goto(addr883);
                                                                                          }
                                                                                          addr661:
                                                                                       }
                                                                                       §§goto(addr1187);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr1212);
                                                                           }
                                                                        }
                                                                        addr1210:
                                                                     }
                                                                     §§goto(addr1388);
                                                                     addr512:
                                                                     if(_loc14_ && param2)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc13_ || param1))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(!§§pop());
                                                                     if(_loc13_)
                                                                     {
                                                                        addr529:
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(this.§!!7§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc14_ && _loc3_))
                                                                                             {
                                                                                                if(!(_loc13_ || _loc3_))
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param2);
                                                                                                         if(_loc13_ || this)
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(!(_loc14_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop() * 2);
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     addr582:
                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           if(!(_loc14_ && param2))
                                                                                                                           {
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       addr610:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             param2 = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr475:
                                                                                                                                                loop25:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                   loop26:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc14_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                            loop27:
                                                                                                                                                            while(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc13_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.colorArgb);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                                                                        loop29:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().red);
                                                                                                                                                                           loop30:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                              loop31:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().red);
                                                                                                                                                                                 loop32:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                    loop33:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       loop34:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          loop35:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().red = §§pop();
                                                                                                                                                                                             loop36:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop25;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc13_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc3_.colorArgb);
                                                                                                                                                                                                loop37:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_.colorArgb);
                                                                                                                                                                                                   addr366:
                                                                                                                                                                                                   while(_loc13_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().green);
                                                                                                                                                                                                      loop39:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                         loop40:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().green);
                                                                                                                                                                                                            loop41:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                               loop42:
                                                                                                                                                                                                               while(_loc13_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  loop43:
                                                                                                                                                                                                                  for(; _loc13_; while(!(_loc14_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr355);
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  })
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        while(_loc13_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().green = §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop26;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop36;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr783);
                                                                                                                                                                                                                           loop48:
                                                                                                                                                                                                                           while(!(_loc14_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                              while(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop().blue);
                                                                                                                                                                                                                                 if(!(_loc13_ || param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                    addr284:
                                                                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                                                                    if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr295:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!(_loc14_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr303:
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(!_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().blue = §§pop();
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop39;
                                                                                                                                                                                                                                                addr355:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop48;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().alpha = §§pop();
                                                                                                                                                                                                                                             loop54:
                                                                                                                                                                                                                                             while(_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                                                                                  loop57:
                                                                                                                                                                                                                                                                  while(!_loc14_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc13_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1219);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr739);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop57;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr681);
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop54;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr399);
                                                                                                                                                                                                                                                               §§goto(addr737);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1307);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1044);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                                                                   if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc13_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc13_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1256);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr846);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr661);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr360:
                                                                                                                                                                                                                                                   §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                   if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop37;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr316:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                      addr318:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop48;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr360);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1402);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop40;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop35;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop32;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop34;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop33;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop29;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr830);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc13_ || _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().alpha);
                                                                                                                                                                              if(!(_loc14_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().alpha);
                                                                                                                                                                                    if(_loc13_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr284);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr347);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr295);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr328);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr303);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr366);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr318);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1177);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1061);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1082:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1071);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1022);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr709);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         loop20:
                                                                                                                                                         for(; !_loc14_; continue loop26)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§!!7§);
                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr505:
                                                                                                                                                               if(_loc13_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr512);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(!(_loc14_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     continue loop20;
                                                                                                                                                                     §§goto(addr505);
                                                                                                                                                                  }
                                                                                                                                                                  addr640:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1389);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr529);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1147);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1085);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1035);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                   §§goto(addr1082);
                                                                                                                                                }
                                                                                                                                                addr1081:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1136);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1076:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1145);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1081);
                                                                                                                              }
                                                                                                                              §§goto(addr1043);
                                                                                                                           }
                                                                                                                           §§goto(addr997);
                                                                                                                        }
                                                                                                                        §§goto(addr961);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr610);
                                                                                                               }
                                                                                                               §§goto(addr1186);
                                                                                                            }
                                                                                                            §§goto(addr943);
                                                                                                         }
                                                                                                         §§goto(addr582);
                                                                                                      }
                                                                                                      §§goto(addr928);
                                                                                                      addr561:
                                                                                                   }
                                                                                                   §§goto(addr475);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr620);
                                                                                          }
                                                                                          addr546:
                                                                                       }
                                                                                       §§goto(addr1282);
                                                                                    }
                                                                                    §§goto(addr561);
                                                                                 }
                                                                                 §§goto(addr113);
                                                                              }
                                                                              addr533:
                                                                           }
                                                                           §§goto(addr836);
                                                                        }
                                                                        §§goto(addr619);
                                                                     }
                                                                     §§goto(addr546);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1355);
                                                         }
                                                      }
                                                      §§goto(addr1210);
                                                   }
                                                }
                                                §§goto(addr1360);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1386);
                              }
                              §§goto(addr993);
                           }
                           §§goto(addr1011);
                        }
                        §§goto(addr954);
                     }
                     §§goto(addr1110);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc13_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(_loc13_ || this)
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr1095);
                     }
                  }
                  §§goto(addr1217);
               }
               §§goto(addr560);
            }
            §§goto(addr1034);
         }
         §§goto(addr1085);
      }
      
      private function §-R§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§5!E§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§0"F§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               while(true)
               {
                  this.§6"C§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§=!]§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§3r§ = this.§3">§(param1.emitterType);
                        while(true)
                        {
                           this.§'W§ = this.§3">§(param1.maxParticles);
                           loop5:
                           while(true)
                           {
                              this.§7!Z§ = Math.max(0.01,this.§%!4§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§2!0§ = this.§%!4§(param1.particleLifespanVariance);
                                 loop7:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() != 1)
                                    {
                                       this.§@!$§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             this.§=!=§ = this.§%!4§(param1.startParticleSize);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§=!=§);
                                                if(!_loc3_)
                                                {
                                                   §§push(param2.height);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc4_)
                                                      {
                                                         addr688:
                                                         §§push(§§pop() / param2.width);
                                                      }
                                                      §§pop().§+!Y§ = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§>!R§ = this.§%!4§(param1.startParticleSizeVariance);
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§>!R§);
                                                            if(_loc4_ || this)
                                                            {
                                                               §§push(param2.height);
                                                               if(_loc4_)
                                                               {
                                                                  addr658:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(param2.width);
                                                                  }
                                                                  §§pop().§ #=§ = §§pop();
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(param1.startParticleSizeX.length() == 1)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        if(param1.startParticleSizeVarianceX.length() == 1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§>!R§ = this.§%!4§(param1.startParticleSizeVarianceX);
                                                                              addr616:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr177:
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                        }
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(param1.startParticleSizeY.length() == 1)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           addr553:
                                                                           while(true)
                                                                           {
                                                                              if(param1.startParticleSizeVarianceY.length() == 1)
                                                                              {
                                                                                 while(_loc4_ || _loc3_)
                                                                                 {
                                                                                    this.§ #=§ = this.§%!4§(param1.startParticleSizeVarianceY);
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr129:
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §"#O§ = this.§;#,§(param1.textureSmoothing);
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || param2)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr96:
                                                                                                   if(_loc4_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc3_ && param1))
                                                                                                      {
                                                                                                         if(param1.emissionVariance.length == 1)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  addr39:
                                                                                                                  if(!(_loc3_ && param1))
                                                                                                                  {
                                                                                                                     addr46:
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           if(_loc3_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           §'"H§ = this.§%!4§(param1.emissionVariance);
                                                                                                                           addr68:
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr70:
                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              loop48:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       this.§0#D§ = this.§%!4§(param1.tangentialAcceleration);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§ null§ = this.§%!4§(param1.maxRadius);
                                                                                                                                          loop50:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§2"v§ = this.§%!4§(param1.maxRadiusVariance);
                                                                                                                                             addr282:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§+#C§ = this.§%!4§(param1.minRadius);
                                                                                                                                                addr274:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§4!S§ = deg2rad(this.§%!4§(param1.rotatePerSecond));
                                                                                                                                                   loop53:
                                                                                                                                                   while(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc3_ && this))
                                                                                                                                                      {
                                                                                                                                                         this.§@!e§ = deg2rad(this.§%!4§(param1.rotatePerSecondVariance));
                                                                                                                                                         loop54:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               continue loop50;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  this.§>"M§ = this.§&!H§(param1.startColor);
                                                                                                                                                                  loop55:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§1"%§ = this.§&!H§(param1.startColorVariance);
                                                                                                                                                                        loop56:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              this.§in § = this.§&!H§(param1.finishColor);
                                                                                                                                                                              loop57:
                                                                                                                                                                              while(!(_loc3_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 this.§#8§ = this.§&!H§(param1.finishColorVariance);
                                                                                                                                                                                 loop58:
                                                                                                                                                                                 while(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr177);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc3_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop58;
                                                                                                                                                                                       §§goto(addr70);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§3!v§ = this.§%!4§(param1.finishParticleSize);
                                                                                                                                                                                       addr550:
                                                                                                                                                                                       while(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(this.§3!v§);
                                                                                                                                                                                          if(_loc4_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param2.height);
                                                                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr536:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!(_loc3_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param2.width);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§,"R§ = §§pop();
                                                                                                                                                                                                loop28:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr492:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(param1.FinishParticleSizeVariance.length() == 1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§0"e§ = this.§%!4§(param1.FinishParticleSizeVariance);
                                                                                                                                                                                                            addr504:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                               §§push(this.§0"e§);
                                                                                                                                                                                                               if(!(_loc3_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param2.height);
                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr488:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param2.width);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().§@!"§ = §§pop();
                                                                                                                                                                                                                     break loop53;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr488);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop56;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr498:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr433:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(param1.finishParticleSizeX.length() == 1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop55;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr418:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§0"e§ = this.§%!4§(param1.FinishParticleSizeVarianceX);
                                                                                                                                                                                                                  addr430:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop3;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop13;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr424:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr409:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§,"R§ = this.§%!4§(param1.finishParticleSizeY);
                                                                                                                                                                                                                     addr415:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop48;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr417:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr409:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(param1.FinishParticleSizeVarianceY.length() != 1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§^F§ = deg2rad(this.§%!4§(param1.angle));
                                                                                                                                                                                                                        break loop54;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr357:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr377:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§@!"§ = this.§%!4§(param1.FinishParticleSizeVarianceY);
                                                                                                                                                                                                                     continue loop6;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr417);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr537:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr536);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc3_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§<C§ = this.§%!4§(param1.speed);
                                                                                                                                                                                          while(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§8"V§ = this.§%!4§(param1.speedVariance);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§`"F§ = this.§%!4§(param1.radialAcceleration);
                                                                                                                                                                                                continue loop48;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                          addr333:
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr409);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr550);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc4_ || param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop57;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr129);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr544);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop53;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop19;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr498);
                                                                                                                                                                        }
                                                                                                                                                                        addr214:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr430);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        this.§3!v§ = this.§%!4§(param1.finishParticleSizeX);
                                                                                                                                                                        break loop48;
                                                                                                                                                                     }
                                                                                                                                                                     addr712:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§@!$§ = this.§%!4§(param1.particleInterval);
                                                                                                                                                                        addr718:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop9;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr160:
                                                                                                                                                                     if(!(_loc4_ || _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §8G§ = this.§0!F§(param1.blendFuncDestination);
                                                                                                                                                                     §§goto(addr118);
                                                                                                                                                                  }
                                                                                                                                                                  addr229:
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr325);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  this.§#"%§ = deg2rad(this.§%!4§(param1.angleVariance));
                                                                                                                                                                  §§goto(addr345);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr424);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr377);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr504);
                                                                                                                                                   }
                                                                                                                                                   while(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr433);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr572);
                                                                                                                                                   §§goto(addr39);
                                                                                                                                                }
                                                                                                                                                §§goto(addr46);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr415);
                                                                                                                                 }
                                                                                                                                 §§goto(addr333);
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           §§goto(addr146);
                                                                                                                           §§goto(addr175);
                                                                                                                        }
                                                                                                                        §§goto(addr298);
                                                                                                                     }
                                                                                                                     §§goto(addr282);
                                                                                                                  }
                                                                                                                  §§goto(addr274);
                                                                                                               }
                                                                                                               §§goto(addr214);
                                                                                                            }
                                                                                                            §§goto(addr68);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§goto(addr537);
                                                                                                }
                                                                                                §§goto(addr229);
                                                                                             }
                                                                                             §§goto(addr118);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                                 continue loop16;
                                                                                 addr559:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(param1.finishParticleSize.length() == 1)
                                                                                 {
                                                                                    §§goto(addr544);
                                                                                 }
                                                                                 §§goto(addr492);
                                                                                 §§goto(addr572);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                            }
                                                            §§goto(addr658);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr688);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr712);
                                 }
                              }
                           }
                           if(!(_loc4_ || param2))
                           {
                              continue;
                           }
                           §§goto(addr418);
                        }
                     }
                  }
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr357);
               }
            }
         }
         §§goto(addr409);
      }
      
      protected function §3">§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §%!4§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §5F§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §&!H§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc4_ || param1)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            loop0:
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               while(true)
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  loop2:
                  while(_loc4_)
                  {
                     continue loop0;
                     while(true)
                     {
                        _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                        if(_loc4_ || _loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function §0!F§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§3">§(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc4_ && _loc3_))
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || this)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           addr156:
                           §§push(0);
                           if(_loc4_ && this)
                           {
                              addr225:
                           }
                        }
                        else
                        {
                           addr309:
                           §§push(6);
                           if(_loc5_ || _loc2_)
                           {
                              addr317:
                           }
                           else
                           {
                              addr350:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(_loc5_ || this)
                        {
                           addr173:
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       addr397:
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
                                       addr397:
                                    }
                                    else
                                    {
                                       addr270:
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          addr273:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr276:
                                                §§push(5);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr284:
                                                }
                                                else
                                                {
                                                   addr392:
                                                }
                                                §§goto(addr397);
                                             }
                                             else
                                             {
                                                §§goto(addr309);
                                             }
                                          }
                                          else
                                          {
                                             §§push(772);
                                             if(_loc5_ || _loc2_)
                                             {
                                                addr293:
                                                §§push(_loc3_);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr301:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§goto(addr309);
                                                      }
                                                      else
                                                      {
                                                         addr342:
                                                         §§push(7);
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            addr359:
                                                            §§push(_loc3_);
                                                            if(_loc5_)
                                                            {
                                                               addr362:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(8);
                                                                     if(!_loc5_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr374:
                                                                     §§push(9);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§goto(addr392);
                                                                     }
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
                                                                        §§goto(addr397);
                                                                        §§push(10);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr397);
                                                            }
                                                            §§goto(addr373);
                                                         }
                                                         §§goto(addr397);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(773);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr374);
                                                            }
                                                            else
                                                            {
                                                               §§push(774);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§goto(addr359);
                                                               }
                                                            }
                                                            §§goto(addr392);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                }
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr397);
                                       }
                                       §§goto(addr301);
                                    }
                                    §§goto(addr397);
                                 }
                                 §§goto(addr374);
                              }
                              else
                              {
                                 §§push(768);
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ || this)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §§push(2);
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr225);
                                             }
                                             else
                                             {
                                                §§goto(addr317);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr342);
                                          }
                                          §§goto(addr397);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!_loc4_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(3);
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr397);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr270);
                                                      }
                                                   }
                                                   §§goto(addr342);
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      addr252:
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(4);
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr397);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr359);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr276);
                                                            }
                                                            §§goto(addr392);
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §§goto(addr270);
                                                            }
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                }
                                                §§goto(addr317);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr284);
                                       }
                                    }
                                    §§goto(addr301);
                                 }
                              }
                              §§goto(addr293);
                           }
                           §§goto(addr301);
                        }
                        §§goto(addr252);
                     }
                     §§goto(addr397);
                  }
                  §§goto(addr301);
               }
               §§goto(addr173);
            }
            §§goto(addr156);
         }
         §§goto(addr397);
      }
      
      protected function §;#,§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§5F§(param1));
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§ +§.§1#B§);
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
                              addr147:
                              loop12:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§ +§.§5!^§);
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc4_ && param1)
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§ +§.NONE);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 break loop7;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                     §§push(§ +§.§1#B§);
                                                                     if(_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     break loop7;
                                                                  }
                                                                  return §§pop();
                                                                  addr62:
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop11;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   continue loop1;
                                                   addr128:
                                                }
                                                §§goto(addr62);
                                             }
                                             continue loop3;
                                             addr118:
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr128);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr118);
                     }
                  }
               }
            }
         }
         §§goto(addr147);
      }
   }
}

import §,!#§.§`E§;

class PDParticle extends §`E§
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
