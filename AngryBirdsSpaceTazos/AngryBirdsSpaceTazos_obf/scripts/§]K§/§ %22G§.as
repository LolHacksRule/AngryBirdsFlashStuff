package §]K§
{
   import §&!Z§.deg2rad;
   import §`!#§.§-!k§;
   import §`!#§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class § "G§ extends §2!k§
   {
       
      
      private const §'!-§:int = 0;
      
      private const §6!D§:int = 1;
      
      private var §?!H§:Number;
      
      private var §8!q§:int;
      
      private var §'!_§:Number;
      
      private var §`!"§:Number;
      
      private var §?"2§:int;
      
      private var §]"=§:Number;
      
      private var §5"B§:Number;
      
      private var §2A§:Number;
      
      private var §%"@§:Number;
      
      private var §9!"§:Number;
      
      private var §="0§:Number;
      
      private var §2b§:Number;
      
      private var §&"2§:Number;
      
      private var §2!B§:Number;
      
      private var §^!6§:Number;
      
      private var §`"1§:Number;
      
      private var §2!^§:Number;
      
      private var §]T§:Number;
      
      private var §^§:Number;
      
      private var §1L§:Number;
      
      private var §'6§:Number;
      
      private var §%=§:Number;
      
      private var §!f§:Number;
      
      private var §4W§:Number;
      
      private var §in§:Number;
      
      private var §0!n§:Number;
      
      private var §?!c§:Number;
      
      private var §6!C§:Number;
      
      private var §4p§:Number;
      
      private var §%!5§:Number;
      
      private var §=!Y§:Number;
      
      private var §0,§:ColorArgb;
      
      private var §>o§:ColorArgb;
      
      private var §&!M§:ColorArgb;
      
      private var §[!G§:ColorArgb;
      
      public function § "G§(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§%B§(param1,param2);
         }
         §§push(this.§?"2§);
         §§push(this.§]"=§);
         if(!_loc4_)
         {
            §§push(§§pop() + this.§2A§);
         }
         §§push(§§pop() / §§pop());
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            super(param2,_loc3_,this.§?"2§,§&!d§,§'!c§);
         }
         do
         {
            §<!l§ = false;
         }
         while(!_loc5_);
         
      }
      
      public function get §8!n§() : int
      {
         return this.§?"2§;
      }
      
      override protected function createParticle() : §;!`§
      {
         return new PDParticle();
      }
      
      private function get §;"0§() : Boolean
      {
         return this.§8!n§ >= 20;
      }
      
      override protected function initParticle(param1:§;!`§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§;!`§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§#F§ - _loc3_.§+V§);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc14_)
         {
            §§push(param2);
            if(!(_loc13_ && this))
            {
               §§push(§§pop() > §§pop());
               if(_loc14_)
               {
                  if(§§pop())
                  {
                     if(_loc14_ || _loc3_)
                     {
                        §§push(param2);
                        if(!(_loc13_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                           if(_loc14_)
                           {
                              addr93:
                              §§push(Number(§§pop()));
                              if(!_loc13_)
                              {
                                 addr96:
                                 param2 = §§pop();
                                 if(!_loc13_)
                                 {
                                    _loc3_.§+V§ += param2;
                                    loop137:
                                    while(true)
                                    {
                                       if(this.§8!q§ != this.§6!D§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          loop41:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             loop42:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop43:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop44:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop124:
                                                         while(true)
                                                         {
                                                            §§push(this.§;"0§);
                                                            loop117:
                                                            while(true)
                                                            {
                                                               if(_loc13_ && param1)
                                                               {
                                                                  continue loop44;
                                                               }
                                                               if(!(_loc13_ && _loc3_))
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop118:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           loop45:
                                                                           while(§§pop())
                                                                           {
                                                                              loop131:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.x - _loc3_.startX);
                                                                                 loop73:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr1201:
                                                                                    loop74:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             §§push(_loc3_.y - _loc3_.startY);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_.§+V§ = _loc3_.§#F§;
                                                                                                loop69:
                                                                                                while(true)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop133:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.skipUpdate);
                                                                                                         addr585:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc13_ && _loc3_))
                                                                                                            {
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(!(_loc13_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           continue loop42;
                                                                                                                        }
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           continue loop43;
                                                                                                                        }
                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop130:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          addr495:
                                                                                                                                          §§push(this.§;"0§);
                                                                                                                                          loop119:
                                                                                                                                          while(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc13_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      continue loop69;
                                                                                                                                                   }
                                                                                                                                                   §§push(param2);
                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * 2);
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            addr519:
                                                                                                                                                            if(!(_loc13_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc13_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     addr536:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc14_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc13_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr559:
                                                                                                                                                                                 if(_loc14_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop73;
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          addr1040:
                                                                                                                                                                                          addr1042:
                                                                                                                                                                                          while(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                addr1160:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                                                                   addr1161:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1115:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         addr1117:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                            addr1118:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                               addr1119:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          loop142:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc14_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc13_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc13_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc14_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        addr1018:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc14_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc13_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       loop98:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                                                                                                                          addr1037:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                                                                             continue loop98;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1160);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1040);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1159);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1082:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1119);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1074:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1117);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1157);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1118);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1111);
                                                                                                                                                                                                continue loop142;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1120);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1074);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr929);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr906);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr909);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1096);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr946);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr968);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr536);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1018);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr519);
                                                                                                                                                }
                                                                                                                                                §§goto(addr987);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                param2 = §§pop();
                                                                                                                                                addr567:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_ || param2)
                                                                                                                                                      {
                                                                                                                                                         break loop119;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1170);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1158);
                                                                                                                                                }
                                                                                                                                                §§goto(addr559);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      continue loop131;
                                                                                                                                                   }
                                                                                                                                                   _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                   while(_loc14_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop130;
                                                                                                                                                      }
                                                                                                                                                      if(_loc14_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.colorArgb);
                                                                                                                                                         loop5:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.colorArgb);
                                                                                                                                                            loop6:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().red);
                                                                                                                                                               loop7:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                  loop8:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().red);
                                                                                                                                                                     loop9:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param2);
                                                                                                                                                                        loop10:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           loop11:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              loop12:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().red = §§pop();
                                                                                                                                                                                 loop13:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc14_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc14_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                                                                          loop14:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_.colorArgb);
                                                                                                                                                                                             loop15:
                                                                                                                                                                                             while(!_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().green);
                                                                                                                                                                                                loop16:
                                                                                                                                                                                                for(; !_loc13_; while(!(_loc13_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().blue = §§pop();
                                                                                                                                                                                                   §§goto(addr309);
                                                                                                                                                                                                })
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc14_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                      loop17:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().green);
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc13_ && _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(param2);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr356:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop19:
                                                                                                                                                                                                         while(_loc14_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            loop20:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().green = §§pop();
                                                                                                                                                                                                               loop21:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop124;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                           addr262:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().blue);
                                                                                                                                                                                                                           if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop20;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop16;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop20;
                                                                                                                                                                                                                        addr325:
                                                                                                                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                        if(!(_loc14_ || this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop14;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop15;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop().alpha);
                                                                                                                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc14_ || param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop16;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                              if(!(_loc14_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop17;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop8;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop().alpha);
                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr248:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr251:
                                                                                                                                                                                                                                          §§pop().alpha = §§pop() + §§pop();
                                                                                                                                                                                                                                          loop29:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                loop30:
                                                                                                                                                                                                                                                while(_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                                                                                                   loop31:
                                                                                                                                                                                                                                                   for(; !(_loc13_ && this); while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc14_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop30;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop31;
                                                                                                                                                                                                                                                   },continue loop30)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr496);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                                                                   if(!(_loc14_ || param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1313);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop115:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§;"0§);
                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc14_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop41;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop115;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr495);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr623:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr739:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                   addr676:
                                                                                                                                                                                                                                                   addr796:
                                                                                                                                                                                                                                                   while(_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop45;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1121);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1114);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1100);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop45;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1355);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr676);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1015);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr300);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr300);
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr356);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop10;
                                                                                                                                                                                                                                    addr295:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop19;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr248);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr251);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr262);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop5;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1271);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop7;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop6;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1238);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr849:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc14_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                          §§push(_loc3_.velocityX);
                                                                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(2 * param2);
                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§'6§);
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr883:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                                                                         §§push(_loc3_.velocityY);
                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(2 * param2);
                                                                                                                                                                                                            if(_loc14_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§%=§);
                                                                                                                                                                                                               if(!(_loc13_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr839:
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr841);
                                                                                                                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr839);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr841);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr886:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr883);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1161);
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
                                                                                                                                                      §§goto(addr1093);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr567);
                                                                                                                                                }
                                                                                                                                                addr634:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      continue loop133;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1082);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr495:
                                                                                                                                       }
                                                                                                                                       addr647:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc13_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc14_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop137;
                                                                                                                                                   }
                                                                                                                                                   _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                   §§goto(addr634);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1327);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr676);
                                                                                                                                       }
                                                                                                                                       §§goto(addr886);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr104);
                                                                                                                              }
                                                                                                                              addr489:
                                                                                                                           }
                                                                                                                           §§goto(addr615);
                                                                                                                        }
                                                                                                                        §§goto(addr1366);
                                                                                                                     }
                                                                                                                     §§goto(addr615);
                                                                                                                  }
                                                                                                                  addr594:
                                                                                                               }
                                                                                                               §§goto(addr1326);
                                                                                                            }
                                                                                                            break;
                                                                                                            addr473:
                                                                                                            if(_loc13_ && this)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               continue loop118;
                                                                                                            }
                                                                                                            if(_loc13_ && param1)
                                                                                                            {
                                                                                                               continue loop117;
                                                                                                            }
                                                                                                            §§goto(addr489);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr849);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               §§push(_loc3_.velocityX);
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  §§push(param2);
                                                                                                                  if(_loc14_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(this.§'6§);
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr778:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              §§push(_loc10_);
                                                                                                                           }
                                                                                                                           §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                           §§goto(addr781);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr778);
                                                                                                            }
                                                                                                            §§goto(addr585);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1168);
                                                                                          continue loop74;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc3_.x += _loc3_.velocityX * param2;
                                                                              §§goto(addr647);
                                                                           }
                                                                           addr1193:
                                                                        }
                                                                        §§goto(addr1364);
                                                                     }
                                                                     §§goto(addr1329);
                                                                  }
                                                               }
                                                               §§goto(addr1377);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr1193);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr1362);
                                    }
                                 }
                                 §§goto(addr623);
                              }
                              §§goto(addr566);
                           }
                           §§goto(addr929);
                        }
                        §§goto(addr1201);
                     }
                     §§goto(addr1093);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!(_loc13_ && param2))
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_)
                        {
                           §§goto(addr93);
                        }
                        §§goto(addr908);
                     }
                  }
                  §§goto(addr96);
               }
               §§goto(addr594);
            }
            §§goto(addr945);
         }
         §§goto(addr1042);
      }
      
      private function §%B§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§'!_§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§`!"§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               while(true)
               {
                  this.§'6§ = parseFloat(param1.gravity.attribute("x"));
                  addr757:
                  addr212:
                  while(true)
                  {
                     this.§%=§ = parseFloat(param1.gravity.attribute("y"));
                  }
                  if(_loc4_ && param2)
                  {
                     continue;
                  }
                  this.§>o§ = this.§[w§(param1.startColorVariance);
                  loop58:
                  while(true)
                  {
                     if(!(_loc4_ && param2))
                     {
                        addr184:
                        if(_loc3_ || this)
                        {
                           if(_loc3_)
                           {
                              addr193:
                              if(!(_loc4_ && this))
                              {
                                 this.§&!M§ = this.§[w§(param1.finishColor);
                                 loop59:
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       addr160:
                                       if(_loc3_ || param2)
                                       {
                                          if(_loc3_)
                                          {
                                             this.§[!G§ = this.§[w§(param1.finishColorVariance);
                                             continue;
                                          }
                                          loop30:
                                          while(_loc3_ || _loc3_)
                                          {
                                             this.§2!B§ = this.§]"?§(param1.FinishParticleSizeVariance);
                                             loop31:
                                             for(; _loc3_; while(_loc3_ || param1)
                                             {
                                                this.§0,§ = this.§[w§(param1.startColor);
                                                §§goto(addr208);
                                                continue loop58;
                                             })
                                             {
                                                §§push(this);
                                                §§push(this.§2!B§);
                                                if(!_loc4_)
                                                {
                                                   §§push(param2.height);
                                                   if(_loc3_ || this)
                                                   {
                                                      addr488:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(param2.width);
                                                      }
                                                      §§pop().§`"1§ = §§pop();
                                                      loop32:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            loop33:
                                                            while(true)
                                                            {
                                                               if(param1.finishParticleSizeX.length() == 1)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr448:
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           this.§&"2§ = this.§]"?§(param1.finishParticleSizeX);
                                                                           loop35:
                                                                           while(true)
                                                                           {
                                                                              addr427:
                                                                              while(true)
                                                                              {
                                                                                 if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                 {
                                                                                    loop37:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§2!B§ = this.§]"?§(param1.FinishParticleSizeVarianceX);
                                                                                       addr439:
                                                                                       addr246:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ || param2)
                                                                                          {
                                                                                             this.§=!Y§ = deg2rad(this.§]"?§(param1.rotatePerSecondVariance));
                                                                                             continue loop31;
                                                                                          }
                                                                                          continue loop37;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(param1.finishParticleSizeY.length() == 1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§^!6§ = this.§]"?§(param1.finishParticleSizeY);
                                                                                          addr424:
                                                                                          loop41:
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                {
                                                                                                   while(_loc3_ || param2)
                                                                                                   {
                                                                                                      this.§`"1§ = this.§]"?§(param1.FinishParticleSizeVarianceY);
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(param1.startParticleSizeVarianceY.length() == 1)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§2b§ = this.§]"?§(param1.startParticleSizeVarianceY);
                                                                                                                        break loop41;
                                                                                                                        §§goto(addr193);
                                                                                                                     }
                                                                                                                     addr558:
                                                                                                                  }
                                                                                                                  addr537:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(param1.finishParticleSize.length() == 1)
                                                                                                                     {
                                                                                                                        while(!_loc4_)
                                                                                                                        {
                                                                                                                           this.§&"2§ = this.§]"?§(param1.finishParticleSize);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(this.§&"2§);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(param2.height);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc3_ || param1)
                                                                                                                                    {
                                                                                                                                       addr534:
                                                                                                                                       §§push(§§pop() / param2.width);
                                                                                                                                    }
                                                                                                                                    §§pop().§^!6§ = §§pop();
                                                                                                                                    break loop58;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr534);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop18:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr567:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.startParticleSizeY.length() != 1)
                                                                                                                              {
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§="0§ = this.§]"?§(param1.startParticleSizeY);
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr598:
                                                                                                                        addr543:
                                                                                                                     }
                                                                                                                     addr492:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(param1.FinishParticleSizeVariance.length() == 1)
                                                                                                                        {
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§%"@§);
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(param2.height);
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr663:
                                                                                                                        §§push(§§pop() / param2.width);
                                                                                                                     }
                                                                                                                     §§pop().§="0§ = §§pop();
                                                                                                                     break loop31;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr663);
                                                                                                            }
                                                                                                            addr673:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(param1.startParticleSizeX.length() == 1)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§%"@§ = this.§]"?§(param1.startParticleSizeX);
                                                                                                                  break loop21;
                                                                                                               }
                                                                                                               addr605:
                                                                                                            }
                                                                                                            addr586:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(param1.startParticleSizeVarianceX.length() == 1)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§9!"§ = this.§]"?§(param1.startParticleSizeVarianceX);
                                                                                                                     §§goto(addr598);
                                                                                                                  }
                                                                                                                  addr592:
                                                                                                               }
                                                                                                               §§goto(addr567);
                                                                                                               break loop21;
                                                                                                            }
                                                                                                         }
                                                                                                         addr629:
                                                                                                      }
                                                                                                      §§goto(addr605);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr586);
                                                                                                   }
                                                                                                   addr611:
                                                                                                   addr398:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§2!^§ = deg2rad(this.§]"?§(param1.angle));
                                                                                                   continue loop35;
                                                                                                   §§goto(addr411);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             §§goto(addr537);
                                                                                          }
                                                                                          §§goto(addr757);
                                                                                       }
                                                                                       addr418:
                                                                                    }
                                                                                    §§goto(addr392);
                                                                                    §§goto(addr439);
                                                                                 }
                                                                                 continue loop35;
                                                                              }
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr701:
                                                                     while(true)
                                                                     {
                                                                        if(param1.particleInterval.length() != 1)
                                                                        {
                                                                           this.§2A§ = 0;
                                                                           break loop30;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§2A§ = this.§]"?§(param1.particleInterval);
                                                                           break loop32;
                                                                        }
                                                                     }
                                                                  }
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     this.§?"2§ = this.§!!E§(param1.maxParticles);
                                                                     while(true)
                                                                     {
                                                                        this.§]"=§ = Math.max(0.01,this.§]"?§(param1.particleLifeSpan));
                                                                        loop6:
                                                                        while(!(_loc4_ && this))
                                                                        {
                                                                           this.§5"B§ = this.§]"?§(param1.particleLifespanVariance);
                                                                           §§goto(addr701);
                                                                           addr318:
                                                                           if(_loc4_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           this.§in§ = this.§]"?§(param1.tangentialAcceleration);
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 this.§?!c§ = this.§]"?§(param1.maxRadius);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       this.§6!C§ = this.§]"?§(param1.maxRadiusVariance);
                                                                                       addr276:
                                                                                       while(_loc3_ || this)
                                                                                       {
                                                                                          this.§4p§ = this.§]"?§(param1.minRadius);
                                                                                          while(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             this.§%!5§ = deg2rad(this.§]"?§(param1.rotatePerSecond));
                                                                                             §§goto(addr246);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§goto(addr318);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr446);
                                                                                             }
                                                                                          }
                                                                                          addr261:
                                                                                          continue loop6;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§8!q§ = this.§!!E§(param1.emitterType);
                                                                                          continue loop4;
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       addr276:
                                                                                       addr747:
                                                                                    }
                                                                                    §§goto(addr611);
                                                                                 }
                                                                                 addr291:
                                                                              }
                                                                              §§goto(addr687);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr446:
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                         }
                                                         break;
                                                         addr92:
                                                         if(!(_loc3_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            if(param1.emissionVariance.length == 1)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr36:
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr92);
                                                                              }
                                                                              §§goto(addr418);
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §'!c§ = this.§6"+§(param1.blendFuncDestination);
                                                                              continue loop58;
                                                                           }
                                                                           addr126:
                                                                        }
                                                                        §§goto(addr36);
                                                                     }
                                                                     §§goto(addr24);
                                                                     addr86:
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop58;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     § !f§ = this.§]"?§(param1.emissionVariance);
                                                                     addr53:
                                                                     if(!(_loc3_ || this))
                                                                     {
                                                                        continue loop59;
                                                                     }
                                                                     addr60:
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr71);
                                                                           }
                                                                           §§goto(addr301);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr212);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr411);
                                                                              }
                                                                           }
                                                                           break;
                                                                           §§goto(addr60);
                                                                        }
                                                                        §§goto(addr360);
                                                                        addr208:
                                                                     }
                                                                     §§goto(addr411);
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                               §§goto(addr53);
                                                            }
                                                            §§goto(addr24);
                                                         }
                                                         §§goto(addr573);
                                                      }
                                                      while(true)
                                                      {
                                                         addr666:
                                                         while(true)
                                                         {
                                                            this.§%"@§ = this.§]"?§(param1.startParticleSize);
                                                            §§goto(addr673);
                                                         }
                                                      }
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                                §§goto(addr488);
                                             }
                                             while(true)
                                             {
                                                this.§9!"§ = this.§]"?§(param1.startParticleSizeVariance);
                                                §§goto(addr637);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr666);
                                             §§goto(addr498);
                                          }
                                          addr498:
                                       }
                                       break;
                                    }
                                    §§goto(addr261);
                                 }
                                 while(true)
                                 {
                                    this.§!f§ = this.§]"?§(param1.radialAcceleration);
                                    §§goto(addr316);
                                    §§goto(addr160);
                                 }
                              }
                              §§goto(addr558);
                           }
                           §§goto(addr543);
                        }
                        break;
                     }
                     §§goto(addr229);
                  }
                  while(true)
                  {
                     §§goto(addr492);
                     §§goto(addr184);
                  }
               }
            }
         }
         §§goto(addr747);
      }
      
      protected function §!!E§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §]"?§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §2!<§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §[w§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc3_ || this)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
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
                  while(_loc4_ && _loc3_);
                  
               }
               while(_loc4_ && _loc3_);
               
            }
            while(_loc4_ && this);
            
         }
         return _loc2_;
      }
      
      protected function §6"+§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§!!E§(param1));
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc4_ && param1))
         {
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(0);
                           if(!(_loc5_ || _loc3_))
                           {
                              addr387:
                           }
                        }
                        else
                        {
                           addr350:
                           §§push(8);
                           if(_loc5_ || this)
                           {
                              addr358:
                           }
                        }
                        addr392:
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
                        addr392:
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || param1)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc4_ && _loc3_)
                                    {
                                       addr225:
                                    }
                                 }
                                 else
                                 {
                                    addr369:
                                    §§push(9);
                                    if(_loc5_ || param1)
                                    {
                                       §§goto(addr387);
                                    }
                                 }
                                 §§goto(addr392);
                              }
                              else
                              {
                                 §§push(768);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc4_ && param1))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§goto(addr225);
                                             }
                                          }
                                          else
                                          {
                                             addr263:
                                             §§push(4);
                                             if(_loc4_ && param1)
                                             {
                                                addr316:
                                                §§push(_loc3_);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr324:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(7);
                                                         if(!_loc4_)
                                                         {
                                                            addr330:
                                                         }
                                                         else
                                                         {
                                                            addr367:
                                                            if(§§pop() === _loc3_)
                                                            {
                                                               §§goto(addr369);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr392);
                                                               §§push(10);
                                                            }
                                                         }
                                                         §§goto(addr392);
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                   else
                                                   {
                                                      §§push(774);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr347:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr350);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr369);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(775);
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§goto(addr367);
                                                               }
                                                               §§goto(addr387);
                                                            }
                                                            §§goto(addr387);
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                }
                                                §§goto(addr367);
                                             }
                                          }
                                          §§goto(addr392);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(_loc5_)
                                          {
                                             addr229:
                                             §§push(_loc3_);
                                             if(!_loc4_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(3);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                      }
                                                      §§goto(addr392);
                                                   }
                                                   else
                                                   {
                                                      addr286:
                                                      §§push(5);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr392);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr358);
                                                      }
                                                   }
                                                   §§goto(addr392);
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(!_loc4_)
                                                   {
                                                      addr252:
                                                      §§push(_loc3_);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr263);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr286);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc5_)
                                                               {
                                                                  addr283:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr286);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr369);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(772);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           addr301:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(6);
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    addr312:
                                                                                 }
                                                                                 §§goto(addr392);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr350);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(773);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr316);
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                           §§goto(addr392);
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     §§goto(addr392);
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               §§goto(addr367);
                                                            }
                                                         }
                                                         §§goto(addr358);
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr330);
                                                }
                                             }
                                             §§goto(addr301);
                                          }
                                          §§goto(addr312);
                                       }
                                    }
                                    §§goto(addr367);
                                 }
                                 §§goto(addr387);
                              }
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr252);
                     }
                     §§goto(addr387);
                  }
                  §§goto(addr347);
               }
               §§goto(addr229);
            }
            §§goto(addr369);
         }
         §§goto(addr392);
      }
      
      protected function §2!9§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§2!<§(param1));
         if(!_loc3_)
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
               §§push(§-!k§.§?F§);
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
                                    §§push(§-!k§.§+!%§);
                                    loop7:
                                    while(!_loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                addr85:
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr44:
                                                      while(true)
                                                      {
                                                         §§push(§-!k§.NONE);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                                continue loop2;
                                                addr110:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(_loc2_);
                                                         continue loop6;
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                   else
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr27:
                                                      §§push(§-!k§.§?F§);
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   §§goto(addr44);
                                                }
                                                §§goto(addr27);
                                                §§goto(addr53);
                                             }
                                             if(!_loc3_)
                                             {
                                                return §§pop();
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                          addr100:
                                       }
                                       §§goto(addr110);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr100);
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
   }
}

import §]K§.§;!`§;

class PDParticle extends §;!`§
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
