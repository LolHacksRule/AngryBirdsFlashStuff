package §3">§
{
   import §!=§.deg2rad;
   import §<5§.Texture;
   import §<5§.§^M§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §4"1§
   {
       
      
      private const §=W§:int = 0;
      
      private const §?a§:int = 1;
      
      private var §-!1§:Number;
      
      private var §0_§:int;
      
      private var § !h§:Number;
      
      private var §1!@§:Number;
      
      private var §#!@§:int;
      
      private var §@!N§:Number;
      
      private var §%,§:Number;
      
      private var §[G§:Number;
      
      private var §^"M§:Number;
      
      private var §'!3§:Number;
      
      private var §]!e§:Number;
      
      private var §&3§:Number;
      
      private var §0S§:Number;
      
      private var §[n§:Number;
      
      private var §0"M§:Number;
      
      private var §%z§:Number;
      
      private var § !l§:Number;
      
      private var §,6§:Number;
      
      private var §?E§:Number;
      
      private var §7W§:Number;
      
      private var §>J§:Number;
      
      private var §4x§:Number;
      
      private var §2!r§:Number;
      
      private var §?f§:Number;
      
      private var §]"C§:Number;
      
      private var §>![§:Number;
      
      private var §8" §:Number;
      
      private var §8"8§:Number;
      
      private var §'O§:Number;
      
      private var §[5§:Number;
      
      private var §?!b§:Number;
      
      private var §%!§:ColorArgb;
      
      private var §;r§:ColorArgb;
      
      private var §0R§:ColorArgb;
      
      private var §`p§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§""6§(param1,param2);
         }
         §§push(this.§#!@§);
         §§push(this.§@!N§);
         if(_loc5_)
         {
            §§push(§§pop() + this.§[G§);
         }
         §§push(§§pop() / §§pop());
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            super(param2,_loc3_,this.§#!@§,§!!]§,§9S§);
         }
         do
         {
            §8$§ = false;
         }
         while(_loc4_ && param2);
         
      }
      
      public function get §@p§() : int
      {
         return this.§#!@§;
      }
      
      override protected function createParticle() : §!!k§
      {
         return new PDParticle();
      }
      
      private function get §]b§() : Boolean
      {
         return this.§@p§ >= 20;
      }
      
      override protected function initParticle(param1:§!!k§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§!!k§, param2:Number) : void
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
         §§push(_loc3_.§4!3§ - _loc3_.§42§);
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!_loc14_)
         {
            §§push(param2);
            if(!_loc14_)
            {
               §§push(§§pop() > §§pop());
               if(_loc13_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        §§push(param2);
                        if(!(_loc14_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc14_ && param1))
                           {
                              addr80:
                           }
                           addr92:
                           §§push(Number(§§pop()));
                           if(_loc13_ || param1)
                           {
                              param2 = §§pop();
                              if(!_loc14_)
                              {
                                 _loc3_.§42§ += param2;
                                 while(true)
                                 {
                                    if(this.§0_§ != this.§?a§)
                                    {
                                       §§push(_loc3_.skipUpdate);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop());
                                             loop2:
                                             while(true)
                                             {
                                                if(_loc13_ || param2)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop127:
                                                      while(true)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               §§pop();
                                                               loop128:
                                                               while(true)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(this.§]b§);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr1181:
                                                                           §§push(!§§pop());
                                                                           loop130:
                                                                           while(_loc13_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.x - _loc3_.startX);
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_.y - _loc3_.startY);
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop9:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      addr1175:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                         loop78:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            §§push(§§pop());
                                                                                                            loop79:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               loop80:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0.01);
                                                                                                                  loop76:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0.01);
                                                                                                                           addr1164:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr1165:
                                                                                                                              loop67:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 addr1166:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop67;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1163:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        loop70:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           loop71:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc13_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 loop72:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc14_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop80;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop96:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          loop110:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc14_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                loop74:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc13_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop78;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop76;
                                                                                                                                                   }
                                                                                                                                                   loop105:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop106:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            loop63:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc14_ && param2)
                                                                                                                                                               {
                                                                                                                                                                  continue loop106;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop5;
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               loop64:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc14_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop74;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc10_ = §§pop();
                                                                                                                                                                     loop65:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        loop66:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc13_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr1072:
                                                                                                                                                                                 loop134:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                       loop92:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                          loop93:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop79;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                      addr1021:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                         addr1023:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc13_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop93;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc14_ && this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop71;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            loop100:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc14_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop70;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                                                                  addr1047:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                                                                     addr993:
                                                                                                                                                                                                                     while(_loc14_ && param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop134;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1000:
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc13_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop63;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop100;
                                                                                                                                                                                                                        §§goto(addr1000);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr946:
                                                                                                                                                                                                if(_loc14_ && this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                loop104:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc14_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc13_ || param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop105;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop144:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc14_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop110;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                  loop89:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                           if(_loc14_ && _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop104;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           loop90:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc14_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop96;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop72;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc13_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§'O§);
                                                                                                                                                                                                                                          addr1229:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop117:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc13_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc3_.§42§ = _loc3_.§4!3§;
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1194:
                                                                                                                                                                                                                                                         loop87:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop130;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!(_loc13_ || param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop127;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop2;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(_loc13_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§]b§);
                                                                                                                                                                                                                                                                                    while(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             loop18:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc14_ && this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop64;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * 2);
                                                                                                                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr537:
                                                                                                                                                                                                                                                                                                      if(_loc14_ && this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop89;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop144;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop90;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         param2 = §§pop();
                                                                                                                                                                                                                                                                                                         while(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop128;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                                                                                                                                                                               continue loop18;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1047);
                                                                                                                                                                                                                                                                                                         addr571:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1021);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1038);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr993);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr537);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop66;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop92;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr921:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr453);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1332);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr841);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                                                                                                                §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                                                                if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.§>J§);
                                                                                                                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                                                                                                                         if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr771:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                            §§goto(addr774);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr771);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr840:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1373);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr838:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop65;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                                                                                                                          addr943:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                                                                                                                             addr944:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr946);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1016:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1046);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop117;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                 §§goto(addr794);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr108);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr500:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr500);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1376);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  loop56:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1336);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop56;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                                                                                                                           §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                                              if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * param2);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().radius = §§pop();
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1300:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1255);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop87;
                                                                                                                                                                                                                                                                  addr1335:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr600);
                                                                                                                                                                                                                                                               continue loop87;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1181);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1254);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1194);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr921);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1058);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1000);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr943);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr944);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1061);
                                                                                                                                                                                                               continue loop144;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1107);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1023);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1071:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1164);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1165);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop106;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1107:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1300);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop80;
                                                                                                                              }
                                                                                                                              §§goto(addr1229);
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
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr636);
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr1374);
                                                                     }
                                                                  }
                                                                  §§goto(addr1287);
                                                               }
                                                            }
                                                            §§goto(addr1330);
                                                         }
                                                         §§goto(addr1335);
                                                      }
                                                      addr1211:
                                                   }
                                                   §§goto(addr1184);
                                                }
                                                §§goto(addr1375);
                                             }
                                          }
                                          §§goto(addr1211);
                                       }
                                    }
                                    §§goto(addr1371);
                                    if(_loc14_ && param2)
                                    {
                                       continue;
                                    }
                                    §§goto(addr838);
                                    §§push(this.§]b§);
                                 }
                              }
                              §§goto(addr1175);
                           }
                           §§goto(addr1136);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr1018);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc13_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(_loc13_)
                        {
                           §§goto(addr92);
                        }
                        §§goto(addr1072);
                     }
                  }
                  §§goto(addr1071);
               }
               §§goto(addr840);
            }
            §§goto(addr1229);
         }
         §§goto(addr979);
      }
      
      private function §""6§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§ !h§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§1!@§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§>J§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§4x§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§0_§ = this.§+!t§(param1.emitterType);
                        loop4:
                        while(true)
                        {
                           this.§#!@§ = this.§+!t§(param1.maxParticles);
                           loop5:
                           while(true)
                           {
                              this.§@!N§ = Math.max(0.01,this.§;!!§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§%,§ = this.§;!!§(param1.particleLifespanVariance);
                                 loop7:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() != 1)
                                    {
                                       this.§[G§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             this.§^"M§ = this.§;!!§(param1.startParticleSize);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§^"M§);
                                                if(_loc4_ || this)
                                                {
                                                   §§push(param2.height);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         addr696:
                                                         §§push(§§pop() / param2.width);
                                                      }
                                                      §§pop().§]!e§ = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§'!3§ = this.§;!!§(param1.startParticleSizeVariance);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§'!3§);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(param2.height);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr664:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(param2.width);
                                                                  }
                                                                  §§pop().§&3§ = §§pop();
                                                                  while(_loc4_)
                                                                  {
                                                                     if(param1.startParticleSizeX.length() != 1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(param1.startParticleSizeVarianceX.length() == 1)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(param1.startParticleSizeY.length() == 1)
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       while(_loc4_)
                                                                                       {
                                                                                          this.§^"M§ = this.§;!!§(param1.startParticleSizeX);
                                                                                          break loop19;
                                                                                       }
                                                                                       continue loop1;
                                                                                       addr620:
                                                                                    }
                                                                                    this.§]!e§ = this.§;!!§(param1.startParticleSizeY);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       loop62:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(param1.emissionVariance.length == 1)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr39:
                                                                                                      if(_loc4_ || param1)
                                                                                                      {
                                                                                                         §&!H§ = this.§;!!§(param1.emissionVariance);
                                                                                                         addr52:
                                                                                                         if(_loc4_ || param2)
                                                                                                         {
                                                                                                            addr59:
                                                                                                            if(!(_loc3_ && param2))
                                                                                                            {
                                                                                                               addr66:
                                                                                                               if(_loc4_ || param2)
                                                                                                               {
                                                                                                                  addr73:
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop32:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(param1.finishParticleSizeX.length() == 1)
                                                                                                                        {
                                                                                                                           loop33:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 while(_loc4_)
                                                                                                                                 {
                                                                                                                                    this.§[G§ = this.§;!!§(param1.particleInterval);
                                                                                                                                    break loop33;
                                                                                                                                 }
                                                                                                                                 continue loop3;
                                                                                                                                 addr720:
                                                                                                                              }
                                                                                                                              this.§0S§ = this.§;!!§(param1.finishParticleSizeX);
                                                                                                                              loop34:
                                                                                                                              while(_loc4_)
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§[n§ = this.§;!!§(param1.FinishParticleSizeVarianceX);
                                                                                                                                          addr455:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr449:
                                                                                                                                    }
                                                                                                                                    addr414:
                                                                                                                                    loop38:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                       {
                                                                                                                                          addr420:
                                                                                                                                          while(_loc4_ || param1)
                                                                                                                                          {
                                                                                                                                             this.§0"M§ = this.§;!!§(param1.finishParticleSizeY);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr435:
                                                                                                                                                   if(!(_loc3_ && this))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                                                         {
                                                                                                                                                            addr407:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§%z§ = this.§;!!§(param1.FinishParticleSizeVarianceY);
                                                                                                                                                               addr413:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr407:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§ !l§ = deg2rad(this.§;!!§(param1.angle));
                                                                                                                                                            continue loop33;
                                                                                                                                                            §§goto(addr413);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr401:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§&3§ = this.§;!!§(param1.startParticleSizeVarianceY);
                                                                                                                                                         break loop34;
                                                                                                                                                         §§goto(addr435);
                                                                                                                                                      }
                                                                                                                                                      addr572:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr449);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop38;
                                                                                                                                          }
                                                                                                                                          loop27:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr498:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(param1.FinishParticleSizeVariance.length() != 1)
                                                                                                                                                {
                                                                                                                                                   continue loop32;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ && this)
                                                                                                                                                   {
                                                                                                                                                      break loop19;
                                                                                                                                                   }
                                                                                                                                                   this.§[n§ = this.§;!!§(param1.FinishParticleSizeVariance);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(this.§[n§);
                                                                                                                                                      if(!(_loc3_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(param2.height);
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr495:
                                                                                                                                                               §§push(§§pop() / param2.width);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§%z§ = §§pop();
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr495);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr420:
                                                                                                                                          addr545:
                                                                                                                                       }
                                                                                                                                       §§goto(addr401);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              loop23:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr546:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(param1.finishParticleSize.length() == 1)
                                                                                                                                    {
                                                                                                                                       loop25:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§0S§ = this.§;!!§(param1.finishParticleSize);
                                                                                                                                          addr558:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ || this))
                                                                                                                                             {
                                                                                                                                                continue loop8;
                                                                                                                                             }
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§0S§);
                                                                                                                                             if(_loc4_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(param2.height);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc3_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr543:
                                                                                                                                                      §§push(§§pop() / param2.width);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§0"M§ = §§pop();
                                                                                                                                                   §§goto(addr545);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr543);
                                                                                                                                          }
                                                                                                                                          continue loop18;
                                                                                                                                          loop50:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                             this.§8" § = this.§;!!§(param1.maxRadius);
                                                                                                                                             loop51:
                                                                                                                                             while(_loc4_)
                                                                                                                                             {
                                                                                                                                                if(_loc4_ || this)
                                                                                                                                                {
                                                                                                                                                   this.§8"8§ = this.§;!!§(param1.maxRadiusVariance);
                                                                                                                                                   loop52:
                                                                                                                                                   for(; !_loc3_; loop53:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc3_ && this))
                                                                                                                                                      {
                                                                                                                                                         continue loop50;
                                                                                                                                                      }
                                                                                                                                                      continue loop52;
                                                                                                                                                      loop56:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr197:
                                                                                                                                                            if(_loc3_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr326:
                                                                                                                                                               break;
                                                                                                                                                               addr168:
                                                                                                                                                               addr326:
                                                                                                                                                            }
                                                                                                                                                            this.§;r§ = this.§9"O§(param1.startColorVariance);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  addr175:
                                                                                                                                                                  if(!(_loc4_ || param2))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                     addr158:
                                                                                                                                                                  }
                                                                                                                                                                  this.§0R§ = this.§9"O§(param1.finishColor);
                                                                                                                                                                  while(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     this.§`p§ = this.§9"O§(param1.finishColorVariance);
                                                                                                                                                                     loop59:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop56;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §!!]§ = this.§7!4§(param1.blendFuncSource);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_ && param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop59;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                 }
                                                                                                                                                                                 §9S§ = this.§7!4§(param1.blendFuncDestination);
                                                                                                                                                                                 while(!(_loc3_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc3_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §%J§ = this.§-w§(param1.textureSmoothing);
                                                                                                                                                                                       continue loop62;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr455);
                                                                                                                                                                                    §§goto(addr52);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(!(_loc3_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§%!§ = this.§9"O§(param1.startColor);
                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                    §§goto(addr105);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr105:
                                                                                                                                                                                 §§goto(addr413);
                                                                                                                                                                                 §§goto(addr59);
                                                                                                                                                                              }
                                                                                                                                                                              addr127:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr517);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr470);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr66);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr558);
                                                                                                                                                                     §§goto(addr39);
                                                                                                                                                                  }
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               continue loop51;
                                                                                                                                                            }
                                                                                                                                                            while(!(_loc3_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  this.§2!r§ = this.§;!!§(param1.radialAcceleration);
                                                                                                                                                                  break loop51;
                                                                                                                                                               }
                                                                                                                                                               continue loop4;
                                                                                                                                                               §§goto(addr175);
                                                                                                                                                            }
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         continue loop53;
                                                                                                                                                      }
                                                                                                                                                      addr362:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            this.§?E§ = this.§;!!§(param1.speed);
                                                                                                                                                            break loop52;
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         §§goto(addr197);
                                                                                                                                                      }
                                                                                                                                                      continue loop11;
                                                                                                                                                   },continue loop50)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         this.§'O§ = this.§;!!§(param1.minRadius);
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr407);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr420);
                                                                                                                                                   }
                                                                                                                                                   continue loop12;
                                                                                                                                                }
                                                                                                                                                continue loop19;
                                                                                                                                                while(_loc4_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      this.§?!b§ = deg2rad(this.§;!!§(param1.rotatePerSecondVariance));
                                                                                                                                                      §§goto(addr214);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr504);
                                                                                                                                                   §§goto(addr168);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   this.§]"C§ = this.§;!!§(param1.tangentialAcceleration);
                                                                                                                                                   continue loop50;
                                                                                                                                                }
                                                                                                                                                §§goto(addr433);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr498);
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr470:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr443);
                                                                                                                     }
                                                                                                                     §§goto(addr73);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr144);
                                                                                                               }
                                                                                                               §§goto(addr407);
                                                                                                            }
                                                                                                            §§goto(addr127);
                                                                                                         }
                                                                                                         §§goto(addr105);
                                                                                                      }
                                                                                                      §§goto(addr158);
                                                                                                   }
                                                                                                   §§goto(addr52);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop10;
                                                                                    §§goto(addr504);
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(param1.startParticleSizeVarianceY.length() == 1)
                                                                                 {
                                                                                    §§goto(addr572);
                                                                                 }
                                                                                 §§goto(addr546);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr594:
                                                                     }
                                                                     §§goto(addr620);
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                            }
                                                            §§goto(addr664);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr696);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr720);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr613);
      }
      
      protected function §+!t§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §;!!§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §%!%§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9"O§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc4_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
         }
         while(true)
         {
            _loc2_.green = parseFloat(param1.attribute("green"));
            while(_loc4_)
            {
               _loc2_.blue = parseFloat(param1.attribute("blue"));
               while(!(_loc3_ && param1))
               {
                  _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                  if(!(_loc3_ && _loc3_))
                  {
                     return _loc2_;
                  }
               }
            }
         }
      }
      
      protected function §7!4§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§+!t§(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || _loc3_)
         {
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               §§push(0);
               if(!(_loc4_ && param1))
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc5_ || _loc3_)
                           {
                              addr372:
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
                              addr372:
                           }
                           else
                           {
                              addr248:
                              §§goto(addr372);
                           }
                        }
                        else
                        {
                           addr327:
                           §§push(7);
                           if(_loc5_)
                           {
                              addr330:
                           }
                           else
                           {
                              addr367:
                           }
                        }
                        §§goto(addr372);
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc4_ && param1))
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              addr191:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    addr199:
                                    §§push(1);
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr263:
                                    §§push(4);
                                    if(!_loc5_)
                                    {
                                       addr293:
                                       §§push(_loc3_);
                                       if(_loc5_ || this)
                                       {
                                          addr301:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr304:
                                                §§push(6);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr312:
                                                   §§goto(addr372);
                                                }
                                                else
                                                {
                                                   addr349:
                                                   §§push(_loc3_);
                                                   if(!_loc4_)
                                                   {
                                                      addr352:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            addr355:
                                                            §§push(8);
                                                            if(_loc5_)
                                                            {
                                                               addr358:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr364:
                                                            §§push(9);
                                                            if(_loc4_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr372);
                                                      }
                                                      else
                                                      {
                                                         §§push(775);
                                                         if(!_loc4_)
                                                         {
                                                            addr363:
                                                            if(§§pop() === _loc3_)
                                                            {
                                                               §§goto(addr364);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr372);
                                                               §§push(10);
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr363);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr327);
                                             }
                                             §§goto(addr367);
                                          }
                                          else
                                          {
                                             §§push(773);
                                             if(_loc5_)
                                             {
                                                addr316:
                                                §§push(_loc3_);
                                                if(!_loc4_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§goto(addr327);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr355);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(774);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§goto(addr349);
                                                      }
                                                   }
                                                   §§goto(addr358);
                                                }
                                                §§goto(addr352);
                                             }
                                          }
                                          §§goto(addr330);
                                       }
                                       §§goto(addr363);
                                    }
                                 }
                                 §§goto(addr372);
                              }
                              else
                              {
                                 §§push(768);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ || this)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(!(_loc4_ && this))
                                             {
                                                §§goto(addr372);
                                             }
                                             else
                                             {
                                                §§goto(addr316);
                                             }
                                          }
                                          §§goto(addr355);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!_loc4_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc4_ && this))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr304);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      addr257:
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(_loc5_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc5_)
                                                               {
                                                                  addr273:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§push(5);
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           addr289:
                                                                           §§goto(addr372);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr316);
                                                                        }
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(772);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr293);
                                                                     }
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                         }
                                                         §§goto(addr358);
                                                      }
                                                      §§goto(addr363);
                                                   }
                                                }
                                                §§goto(addr330);
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr289);
                                       }
                                    }
                                    §§goto(addr352);
                                 }
                              }
                              §§goto(addr312);
                           }
                           §§goto(addr273);
                        }
                        §§goto(addr257);
                     }
                  }
                  §§goto(addr191);
               }
               §§goto(addr372);
            }
            §§goto(addr199);
         }
         §§goto(addr372);
      }
      
      protected function §-w§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§%!%§(param1));
         if(!_loc4_)
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
               §§push(§^M§.§#§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop11:
                           while(true)
                           {
                              §§pop();
                              loop8:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       break loop8;
                                    }
                                    addr87:
                                    §§push(§^M§.§2"C§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                if(!§§pop())
                                                {
                                                   break loop7;
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            addr80:
                                                            §§push(_loc2_);
                                                            break;
                                                         }
                                                         addr115:
                                                         while(true)
                                                         {
                                                            if(_loc4_ && param1)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(_loc2_);
                                                         }
                                                         continue loop8;
                                                      }
                                                      addr26:
                                                      §§push(§^M§.§#§);
                                                      if(_loc4_ && this)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            return §§pop();
                                                         }
                                                         continue loop10;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§^M§.NONE);
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  break loop7;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§goto(addr26);
                                                }
                                                return §§pop();
                                             }
                                             break;
                                          }
                                          continue loop2;
                                          addr109:
                                       }
                                       continue loop11;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr115);
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           addr136:
                        }
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr136);
               }
            }
         }
         §§goto(addr80);
      }
   }
}

import §3">§.§!!k§;

class PDParticle extends §!!k§
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
