package §'!3§
{
   import §%q§.§+,§;
   import §%q§.Texture;
   import §+o§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §=@§ extends §"L§
   {
       
      
      private const §'!^§:int = 0;
      
      private const §3a§:int = 1;
      
      private var §08§:Number;
      
      private var §,"%§:int;
      
      private var §=`§:Number;
      
      private var § 3§:Number;
      
      private var §?A§:int;
      
      private var §&!W§:Number;
      
      private var §<!L§:Number;
      
      private var § case§:Number;
      
      private var §`!H§:Number;
      
      private var §,i§:Number;
      
      private var §<I§:Number;
      
      private var §;"$§:Number;
      
      private var §#!"§:Number;
      
      private var §,x§:Number;
      
      private var §'_§:Number;
      
      private var §else §:Number;
      
      private var §3<§:Number;
      
      private var §=q§:Number;
      
      private var §>3§:Number;
      
      private var §%V§:Number;
      
      private var §]7§:Number;
      
      private var §`!§:Number;
      
      private var §]x§:Number;
      
      private var §do§:Number;
      
      private var §,!+§:Number;
      
      private var §&d§:Number;
      
      private var §>!t§:Number;
      
      private var §>g§:Number;
      
      private var §0!U§:Number;
      
      private var §#`§:Number;
      
      private var §&!X§:Number;
      
      private var §,!Y§:ColorArgb;
      
      private var §-!Q§:ColorArgb;
      
      private var §3$§:ColorArgb;
      
      private var §[N§:ColorArgb;
      
      public function §=@§(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§3!o§(param1,param2);
         }
         §§push(this.§?A§);
         §§push(this.§&!W§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() + this.§ case§);
         }
         §§push(§§pop() / §§pop());
         if(_loc5_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            super(param2,_loc3_,this.§?A§,§&!H§,§9!K§);
         }
         do
         {
            §>#§ = false;
         }
         while(!(_loc5_ || _loc3_));
         
      }
      
      public function get §8!,§() : int
      {
         return this.§?A§;
      }
      
      override protected function createParticle() : §;x§
      {
         return new PDParticle();
      }
      
      private function get § m§() : Boolean
      {
         return this.§8!,§ >= 20;
      }
      
      override protected function initParticle(param1:§;x§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§;x§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§,!Q§ - _loc3_.§+L§);
         if(_loc14_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc13_ && param1))
         {
            §§push(param2);
            if(!_loc13_)
            {
               §§push(§§pop() > §§pop());
               if(_loc14_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc14_ || _loc3_)
                     {
                        §§push(param2);
                        if(!_loc13_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc13_)
                           {
                              addr98:
                              §§push(Number(§§pop()));
                              if(!_loc13_)
                              {
                                 param2 = §§pop();
                                 if(_loc14_ || _loc3_)
                                 {
                                    _loc3_.§+L§ += param2;
                                    while(true)
                                    {
                                       if(this.§,"%§ != this.§3a§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          loop1:
                                          while(true)
                                          {
                                             if(_loc14_ || param2)
                                             {
                                                §§push(!§§pop());
                                                loop141:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop142:
                                                   while(true)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop132:
                                                            while(_loc13_ && this)
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        §§push(_loc3_.radius);
                                                                        if(!(_loc13_ && _loc3_))
                                                                        {
                                                                           §§push(_loc3_.radiusDelta);
                                                                           if(_loc14_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() * param2);
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§pop().radius = §§pop();
                                                                        while(true)
                                                                        {
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              _loc3_.x = §!!I§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                              while(true)
                                                                              {
                                                                                 _loc3_.y = §?!q§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_.radius);
                                                                                    addr1252:
                                                                                    loop144:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§0!U§);
                                                                                       addr1254:
                                                                                       loop143:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_.§+L§ = _loc3_.§,!Q§;
                                                                                                addr1259:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr1255:
                                                                                          }
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_.skipUpdate);
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc14_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop141;
                                                                                                   }
                                                                                                   §§push(!§§pop());
                                                                                                   loop18:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc13_ && param2)
                                                                                                      {
                                                                                                         continue loop142;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop19:
                                                                                                         for(; _loc14_; if(!(_loc14_ || param1))
                                                                                                         {
                                                                                                            continue;
                                                                                                         },if(_loc13_)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         },if(!_loc14_)
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         },§§push(!§§pop()),if(_loc14_)
                                                                                                         {
                                                                                                            if(_loc14_ || param1)
                                                                                                            {
                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr114);
                                                                                                                     }
                                                                                                                     §§goto(addr495);
                                                                                                                  }
                                                                                                                  addr493:
                                                                                                               }
                                                                                                               §§goto(addr1385);
                                                                                                            }
                                                                                                            §§goto(addr1189);
                                                                                                         },§§goto(addr497))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc14_ || param2)
                                                                                                               {
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§push(this.§ m§);
                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     addr497:
                                                                                                                     loop21:
                                                                                                                     while(_loc14_)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop130:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc13_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop132;
                                                                                                                        }
                                                                                                                        while(§§pop())
                                                                                                                        {
                                                                                                                           loop105:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.x - _loc3_.startX);
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              loop106:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 addr1213:
                                                                                                                                 addr1153:
                                                                                                                                 addr1160:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc13_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          addr1169:
                                                                                                                                          §§push(_loc3_.y - _loc3_.startY);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr1170:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                addr1171:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc14_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   addr1248:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§ m§);
                                                                                                                                                      addr1189:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop130;
                                                                                                                                                      }
                                                                                                                                                      break loop132;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1169:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             §§push(_loc3_.radius);
                                                                                                                                             if(_loc14_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.radiusDelta);
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   addr1346:
                                                                                                                                                   §§push(§§pop() * param2);
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      addr1343:
                                                                                                                                                      §§push(§§pop() * 2);
                                                                                                                                                   }
                                                                                                                                                   §§pop().radius = §§pop() - §§pop();
                                                                                                                                                   while(_loc14_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop9;
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                   addr1347:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1343);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1346);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1259);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(_loc13_ && param1)
                                                                                                                                 {
                                                                                                                                    continue loop106;
                                                                                                                                 }
                                                                                                                                 loop67:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr1161:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       loop69:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop70:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             loop71:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                loop72:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_ && param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop143;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   loop73:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop74:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            continue loop67;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc13_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop105;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               loop76:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  loop77:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr1110:
                                                                                                                                                                           addr1076:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                              addr1111:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 continue loop76;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           loop89:
                                                                                                                                                                           for(; _loc14_ || param2; while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop89;
                                                                                                                                                                           })
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop90:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                                                                 addr1085:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                       while(!(_loc13_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr927:
                                                                                                                                                                                          if(_loc13_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc14_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr942:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             loop117:
                                                                                                                                                                                             while(!(_loc13_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr949:
                                                                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr956:
                                                                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                                                                         continue loop69;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr964:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                               addr987:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc13_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        addr997:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              break loop117;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1110);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop71;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop89;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop72;
                                                                                                                                                                                                               §§goto(addr949);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr985:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                         §§goto(addr956);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc11_ = §§pop();
                                                                                                                                                                                                            addr1090:
                                                                                                                                                                                                            loop86:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                  continue loop89;
                                                                                                                                                                                                                  addr909:
                                                                                                                                                                                                                  if(!(_loc14_ || param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop86;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                  if(!(_loc13_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr927);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr987);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr982:
                                                                                                                                                                                                      addr1088:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr985);
                                                                                                                                                                                             }
                                                                                                                                                                                             loop114:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc10_ = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr895:
                                                                                                                                                                                                               if(!(_loc13_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop90;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop73;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1027:
                                                                                                                                                                                                            while(_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr982);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop74;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr893:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1213);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1010:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc13_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1027);
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop103:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               addr1149:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc7_ = §§pop();
                                                                                                                                                                                                                  addr1150:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0.01);
                                                                                                                                                                                                                     addr1151:
                                                                                                                                                                                                                     while(§§pop() < §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop67;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop70;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop103;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc14_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               continue loop73;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop144;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1045:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop114;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop82:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                                                                      addr1102:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop82;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1101:
                                                                                                                                                                                                   addr1015:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1088);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr942:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1151);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop77;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1045);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1149);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr662:
                                                                                                                                                               if(_loc13_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop16;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1171);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1150);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop67;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop124:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                           addr653:
                                                                                                                           while(_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 §§goto(addr662);
                                                                                                                              }
                                                                                                                              §§goto(addr1085);
                                                                                                                              continue loop124;
                                                                                                                           }
                                                                                                                           §§goto(addr1010);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              §§goto(addr643);
                                                                                                                           }
                                                                                                                           §§goto(addr1346);
                                                                                                                        }
                                                                                                                        addr781:
                                                                                                                     }
                                                                                                                     §§goto(addr1152);
                                                                                                                  }
                                                                                                                  addr830:
                                                                                                               }
                                                                                                               break;
                                                                                                               addr445:
                                                                                                               loop25:
                                                                                                               while(_loc14_ || this)
                                                                                                               {
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                     loop26:
                                                                                                                     while(_loc14_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                        loop27:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.colorArgb);
                                                                                                                           loop28:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().red);
                                                                                                                              if(_loc14_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.colorArgbDelta);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().red);
                                                                                                                                    addr410:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param2);
                                                                                                                                       addr411:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr412:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr409:
                                                                                                                              }
                                                                                                                              loop33:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().red = §§pop();
                                                                                                                                 loop34:
                                                                                                                                 while(!(_loc13_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.colorArgb);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.colorArgb);
                                                                                                                                       addr376:
                                                                                                                                       while(_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().green);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.colorArgbDelta);
                                                                                                                                             loop38:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().green);
                                                                                                                                                loop39:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param2);
                                                                                                                                                   loop40:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      loop41:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         loop42:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().green = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc14_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.colorArgb);
                                                                                                                                                                  loop44:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.colorArgb);
                                                                                                                                                                     addr322:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().blue);
                                                                                                                                                                        addr323:
                                                                                                                                                                        while(!(_loc13_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                           while(!(_loc13_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().blue);
                                                                                                                                                                                 while(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                    while(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       while(_loc14_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          while(_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().blue = §§pop();
                                                                                                                                                                                             loop52:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop25;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc14_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1361:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr965);
                                                                                                                                                                                                }
                                                                                                                                                                                                loop54:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc14_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc13_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                                                            loop55:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                               loop56:
                                                                                                                                                                                                               while(_loc14_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                                                                  loop57:
                                                                                                                                                                                                                  for(; _loc14_ || param2; while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                     §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().skipUpdate = §§pop();
                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop57;
                                                                                                                                                                                                                  })
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr573:
                                                                                                                                                                                                                     while(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop11;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr653);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(_loc14_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                     continue loop54;
                                                                                                                                                                                                                     §§goto(addr168);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr168:
                                                                                                                                                                                                                  continue loop34;
                                                                                                                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1102);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop26;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop52;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr781);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop39;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop41;
                                                                                                                                                                                 addr342:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr409);
                                                                                                                                                                              §§goto(addr412);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop38;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop33;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(!(_loc13_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param2);
                                                                                                                                                                     if(_loc14_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc13_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc14_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc14_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * 2);
                                                                                                                                                                                    if(!(_loc13_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr556:
                                                                                                                                                                                       if(_loc14_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr568:
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      param2 = §§pop();
                                                                                                                                                                                                      §§goto(addr573);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1161);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1076);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1169);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1170);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr893);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr568);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1093);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr997);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr942);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr964);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr556);
                                                                                                                                                                  }
                                                                                                                                                                  addr509:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1061);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop28;
                                                                                                                                       if(!(_loc13_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr640);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr495);
                                                                                                                  }
                                                                                                                  §§goto(addr1030);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     §§push(_loc3_.velocityY);
                                                                                                                     if(_loc14_ || param1)
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(this.§`!§);
                                                                                                                           if(_loc14_ || param2)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 addr730:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    addr728:
                                                                                                                                    §§push(§§pop() + _loc11_);
                                                                                                                                 }
                                                                                                                                 §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                 §§goto(addr732);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr728);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr730);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        §§push(_loc3_.velocityX);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(2 * param2);
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              §§push(this.§]7§);
                                                                                                                              if(!(_loc13_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(_loc14_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr886:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc14_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr884:
                                                                                                                                       §§push(§§pop() + _loc10_);
                                                                                                                                    }
                                                                                                                                    §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          §§push(_loc3_.velocityY);
                                                                                                                                          if(_loc14_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(2 * param2);
                                                                                                                                             if(_loc14_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§`!§);
                                                                                                                                                if(_loc14_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(!(_loc13_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr828:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc13_)
                                                                                                                                                      {
                                                                                                                                                         addr826:
                                                                                                                                                         §§push(§§pop() + _loc11_);
                                                                                                                                                      }
                                                                                                                                                      §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                      §§goto(addr830);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr826);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr828);
                                                                                                                                       }
                                                                                                                                       addr1398:
                                                                                                                                       loop66:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§ m§);
                                                                                                                                          addr1358:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             addr1359:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr1360:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop15;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1361);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop66;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr888:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr884);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr886);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1255);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr846:
                                                                                                               }
                                                                                                               §§goto(addr888);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               if(!(_loc13_ && param1))
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     §§push(_loc3_.velocityX);
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§push(this.§]7§);
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(!(_loc13_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr762:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    addr760:
                                                                                                                                    §§push(§§pop() + _loc10_);
                                                                                                                                 }
                                                                                                                                 §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                 §§goto(addr764);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr760);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr762);
                                                                                                                  }
                                                                                                                  §§goto(addr846);
                                                                                                               }
                                                                                                               §§goto(addr1384);
                                                                                                            }
                                                                                                            §§goto(addr1360);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr493);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            §§goto(addr1398);
                                                                                                         }
                                                                                                         addr1397:
                                                                                                      }
                                                                                                      §§goto(addr1359);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(_loc13_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                              §§goto(addr445);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1364);
                                                               }
                                                            }
                                                            §§pop();
                                                            §§goto(addr1248);
                                                         }
                                                         §§goto(addr1197);
                                                      }
                                                      §§goto(addr1386);
                                                   }
                                                }
                                                addr1236:
                                             }
                                             §§goto(addr1358);
                                          }
                                       }
                                       §§goto(addr1382);
                                       if(_loc13_ && this)
                                       {
                                          continue;
                                       }
                                       §§goto(addr1015);
                                       §§push(_loc10_);
                                    }
                                 }
                                 §§goto(addr1398);
                              }
                              §§goto(addr1160);
                           }
                           §§goto(addr1060);
                        }
                        §§goto(addr1170);
                     }
                     §§goto(addr161);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_ || _loc3_)
                        {
                           §§goto(addr98);
                        }
                        §§goto(addr1001);
                     }
                  }
                  §§goto(addr1169);
               }
               §§goto(addr1236);
            }
            §§goto(addr1254);
         }
         §§goto(addr1252);
      }
      
      private function §3!o§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§=`§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§ 3§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§]7§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§`!§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§,"%§ = this.§6P§(param1.emitterType);
                        loop4:
                        while(true)
                        {
                           this.§?A§ = this.§6P§(param1.maxParticles);
                           loop5:
                           while(true)
                           {
                              this.§&!W§ = Math.max(0.01,this.§[!D§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§<!L§ = this.§[!D§(param1.particleLifespanVariance);
                                 loop7:
                                 while(_loc4_)
                                 {
                                    if(param1.particleInterval.length() != 1)
                                    {
                                       this.§ case§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             this.§`!H§ = this.§[!D§(param1.startParticleSize);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§`!H§);
                                                if(!_loc3_)
                                                {
                                                   §§push(param2.height);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      addr690:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         §§push(param2.width);
                                                      }
                                                      §§pop().§<I§ = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§,i§ = this.§[!D§(param1.startParticleSizeVariance);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§,i§);
                                                            if(!(_loc3_ && param2))
                                                            {
                                                               §§push(param2.height);
                                                               if(_loc4_ || param1)
                                                               {
                                                                  addr659:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(param2.width);
                                                                  }
                                                                  §§pop().§;"$§ = §§pop();
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(param1.startParticleSizeX.length() == 1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§`!H§ = this.§[!D§(param1.startParticleSizeX);
                                                                           addr625:
                                                                           addr721:
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ || param2))
                                                                              {
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    this.§ case§ = this.§[!D§(param1.particleInterval);
                                                                                    break loop15;
                                                                                 }
                                                                                 continue loop7;
                                                                                 addr713:
                                                                              }
                                                                           }
                                                                           addr721:
                                                                           while(true)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                        addr619:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(param1.startParticleSizeVarianceX.length() == 1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§,i§ = this.§[!D§(param1.startParticleSizeVarianceX);
                                                                              addr610:
                                                                              while(!_loc3_)
                                                                              {
                                                                              }
                                                                              continue loop11;
                                                                              addr99:
                                                                              if(_loc3_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(param1.emissionVariance.length == 1)
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr44:
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr51:
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §9!e§ = this.§[!D§(param1.emissionVariance);
                                                                                             addr66:
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr68:
                                                                                                if(!(_loc4_ || param2))
                                                                                                {
                                                                                                   loop54:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                      {
                                                                                                         addr221:
                                                                                                         if(!(_loc4_ || this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            this.§,!Y§ = this.§>!k§(param1.startColor);
                                                                                                            loop55:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  this.§-!Q§ = this.§>!k§(param1.startColorVariance);
                                                                                                                  loop56:
                                                                                                                  while(_loc4_)
                                                                                                                  {
                                                                                                                     this.§3$§ = this.§>!k§(param1.finishColor);
                                                                                                                     loop57:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop56;
                                                                                                                        }
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr177:
                                                                                                                           if(!(_loc4_ || param2))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           this.§[N§ = this.§>!k§(param1.finishColorVariance);
                                                                                                                           loop58:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §&!H§ = this.§^p§(param1.blendFuncSource);
                                                                                                                                    loop59:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop55;
                                                                                                                                       }
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          addr137:
                                                                                                                                          if(_loc3_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §9!K§ = this.§^p§(param1.blendFuncDestination);
                                                                                                                                             loop60:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop59;
                                                                                                                                                }
                                                                                                                                                if(!(_loc4_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §<,§ = this.§-"$§(param1.textureSmoothing);
                                                                                                                                                   continue loop58;
                                                                                                                                                }
                                                                                                                                                while(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§,x§ = this.§[!D§(param1.FinishParticleSizeVariance);
                                                                                                                                                      addr512:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ || param1))
                                                                                                                                                         {
                                                                                                                                                            break loop60;
                                                                                                                                                         }
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(this.§,x§);
                                                                                                                                                         if(_loc4_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(param2.height);
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc4_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr488:
                                                                                                                                                                  §§push(§§pop() / param2.width);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§else § = §§pop();
                                                                                                                                                               continue loop5;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr488);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   loop25:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(param1.finishParticleSize.length() == 1)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               this.§#!"§ = this.§[!D§(param1.finishParticleSize);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(this);
                                                                                                                                                                     §§push(this.§#!"§);
                                                                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param2.height);
                                                                                                                                                                        if(!(_loc3_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr551:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc3_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param2.width);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§'_§ = §§pop();
                                                                                                                                                                           loop28:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr498:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(param1.FinishParticleSizeVariance.length() == 1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr504);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(param1.finishParticleSizeX.length() == 1)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop32:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§#!"§ = this.§[!D§(param1.finishParticleSizeX);
                                                                                                                                                                                             addr455:
                                                                                                                                                                                             loop33:
                                                                                                                                                                                             while(!(_loc3_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§,x§ = this.§[!D§(param1.FinishParticleSizeVarianceX);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr420:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc3_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc3_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop8;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr591:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§<I§ = this.§[!D§(param1.startParticleSizeY);
                                                                                                                                                                                                                        break loop33;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop3;
                                                                                                                                                                                                                  addr426:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc4_ || this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop32;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop6;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§'_§ = this.§[!D§(param1.finishParticleSizeY);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop33;
                                                                                                                                                                                                            addr381:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§else § = this.§[!D§(param1.FinishParticleSizeVarianceY);
                                                                                                                                                                                                                     addr374:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr374:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr721);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr51);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr361:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§3<§ = deg2rad(this.§[!D§(param1.angle));
                                                                                                                                                                                                               break loop57;
                                                                                                                                                                                                               §§goto(addr374);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr413);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr375:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr426);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             loop21:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr572:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(param1.startParticleSizeVarianceY.length() != 1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§;"$§ = this.§[!D§(param1.startParticleSizeVarianceY);
                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                      addr92:
                                                                                                                                                                                                      if(!(_loc4_ || this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr99);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr414);
                                                                                                                                                                                       addr497:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop28;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr552:
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr551);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr625);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop12;
                                                                                                                                                               addr567:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr619);
                                                                                                                                                            §§goto(addr625);
                                                                                                                                                         }
                                                                                                                                                         addr559:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr498);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr504:
                                                                                                                                                §§goto(addr44);
                                                                                                                                             }
                                                                                                                                             §§goto(addr610);
                                                                                                                                             addr114:
                                                                                                                                          }
                                                                                                                                          §§goto(addr381);
                                                                                                                                       }
                                                                                                                                       while(!(_loc3_ && param1))
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             this.§&!X§ = deg2rad(this.§[!D§(param1.rotatePerSecondVariance));
                                                                                                                                             continue loop54;
                                                                                                                                          }
                                                                                                                                          §§goto(addr567);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§>!t§ = this.§[!D§(param1.maxRadius);
                                                                                                                                          addr282:
                                                                                                                                          while(_loc4_)
                                                                                                                                          {
                                                                                                                                             this.§>g§ = this.§[!D§(param1.maxRadiusVariance);
                                                                                                                                             while(!_loc3_)
                                                                                                                                             {
                                                                                                                                                this.§0!U§ = this.§[!D§(param1.minRadius);
                                                                                                                                                break loop59;
                                                                                                                                             }
                                                                                                                                             §§goto(addr512);
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                          §§goto(addr240);
                                                                                                                                       }
                                                                                                                                       addr240:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc4_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          this.§#`§ = deg2rad(this.§[!D§(param1.rotatePerSecond));
                                                                                                                                          §§goto(addr240);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                       §§goto(addr137);
                                                                                                                                    }
                                                                                                                                    §§goto(addr552);
                                                                                                                                 }
                                                                                                                                 §§goto(addr455);
                                                                                                                              }
                                                                                                                              §§goto(addr272);
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        §§goto(addr282);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§=q§ = deg2rad(this.§[!D§(param1.angleVariance));
                                                                                                                        continue loop1;
                                                                                                                        §§goto(addr177);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               §§goto(addr559);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr413);
                                                                                                      }
                                                                                                      addr300:
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                         this.§,!+§ = this.§[!D§(param1.tangentialAcceleration);
                                                                                                         §§goto(addr292);
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   while(!(_loc3_ && param2))
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         this.§]x§ = this.§[!D§(param1.radialAcceleration);
                                                                                                         §§goto(addr300);
                                                                                                      }
                                                                                                      §§goto(addr420);
                                                                                                      §§goto(addr221);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§%V§ = this.§[!D§(param1.speedVariance);
                                                                                                      §§goto(addr310);
                                                                                                   }
                                                                                                   addr310:
                                                                                                   addr327:
                                                                                                }
                                                                                                §§goto(addr25);
                                                                                             }
                                                                                             §§goto(addr173);
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       §§goto(addr114);
                                                                                    }
                                                                                    §§goto(addr83);
                                                                                 }
                                                                                 §§goto(addr66);
                                                                              }
                                                                              §§goto(addr25);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(param1.startParticleSizeY.length() == 1)
                                                                           {
                                                                              §§goto(addr591);
                                                                           }
                                                                           §§goto(addr572);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                            }
                                                            §§goto(addr659);
                                                         }
                                                      }
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                                §§goto(addr690);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr713);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr506);
      }
      
      protected function §6P§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §[!D§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §-x§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §>!k§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!(_loc4_ && param1))
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               while(_loc3_)
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  loop2:
                  while(!_loc4_)
                  {
                     while(true)
                     {
                        _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                        if(_loc3_)
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
         §§goto(addr64);
      }
      
      protected function §^p§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§6P§(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || this)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                              addr210:
                           }
                        }
                        else
                        {
                           addr230:
                           §§push(3);
                           if(_loc4_)
                           {
                              addr316:
                              §§push(_loc3_);
                              if(_loc5_ || param1)
                              {
                                 addr324:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       addr327:
                                       §§push(7);
                                       if(!_loc4_)
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
                                          addr330:
                                       }
                                       else
                                       {
                                          addr362:
                                          if(§§pop() === _loc3_)
                                          {
                                             addr364:
                                             §§push(9);
                                             if(_loc5_ || param1)
                                             {
                                             }
                                             §§goto(addr387);
                                          }
                                          else
                                          {
                                             §§goto(addr387);
                                             §§push(10);
                                          }
                                          §§goto(addr387);
                                       }
                                    }
                                    else
                                    {
                                       addr355:
                                       §§push(8);
                                       if(!_loc5_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(774);
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr339:
                                       §§push(_loc3_);
                                       if(_loc5_ || this)
                                       {
                                          addr347:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§goto(addr355);
                                             }
                                             else
                                             {
                                                §§goto(addr364);
                                             }
                                          }
                                          else
                                          {
                                             §§push(775);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr362);
                                             }
                                             §§goto(addr387);
                                          }
                                          §§goto(addr387);
                                       }
                                       §§goto(addr362);
                                    }
                                 }
                                 §§goto(addr387);
                              }
                              §§goto(addr347);
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || this)
                                 {
                                    §§push(1);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr387);
                                    }
                                    else
                                    {
                                       addr196:
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr202:
                                                §§push(2);
                                                if(_loc5_ || param1)
                                                {
                                                   §§goto(addr210);
                                                }
                                                else
                                                {
                                                   §§goto(addr362);
                                                }
                                             }
                                             else
                                             {
                                                addr286:
                                                §§push(5);
                                                if(_loc5_ || this)
                                                {
                                                   addr294:
                                                   §§goto(addr387);
                                                }
                                                else
                                                {
                                                   §§goto(addr330);
                                                }
                                             }
                                             §§goto(addr387);
                                          }
                                          else
                                          {
                                             §§push(769);
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(_loc3_);
                                                if(_loc5_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§goto(addr230);
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                   else
                                                   {
                                                      §§push(770);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr250:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(4);
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     addr266:
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
                                                               §§push(771);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     addr278:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§goto(addr286);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr327);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(772);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr298:
                                                                           §§push(_loc3_);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §§push(6);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr387);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr355);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(773);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr316);
                                                                                 }
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr347);
                                                                        }
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                            §§goto(addr387);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                   }
                                                   §§goto(addr362);
                                                }
                                                §§goto(addr347);
                                             }
                                             §§goto(addr266);
                                          }
                                       }
                                       §§goto(addr347);
                                    }
                                 }
                                 §§goto(addr327);
                              }
                              else
                              {
                                 §§push(768);
                                 if(_loc5_)
                                 {
                                    §§goto(addr196);
                                 }
                                 §§goto(addr298);
                              }
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr294);
                     }
                     §§goto(addr387);
                  }
                  §§goto(addr278);
               }
               §§goto(addr298);
            }
            §§goto(addr202);
         }
         §§goto(addr387);
      }
      
      protected function §-"$§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§-x§(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§+,§.§7q§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
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
                              addr152:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr111:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§+,§.§]!h§);
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr151:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc4_ && _loc3_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr127:
                                    while(!(_loc4_ && _loc3_))
                                    {
                                       §§push(_loc2_);
                                       while(true)
                                       {
                                          §§push(§+,§.NONE);
                                          if(!(_loc3_ || this))
                                          {
                                             break;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop7;
                                          }
                                          continue loop1;
                                          addr46:
                                          if(_loc4_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(!_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr111);
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr152);
                                 }
                              }
                              §§goto(addr100);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr152);
      }
   }
}

import §'!3§.§;x§;

class PDParticle extends §;x§
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
