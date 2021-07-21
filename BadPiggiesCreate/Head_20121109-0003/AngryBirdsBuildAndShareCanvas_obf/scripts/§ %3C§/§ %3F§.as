package § <§
{
   import §0!%§.§%§;
   import §0!%§.Texture;
   import §`!=§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class § ?§ extends §-!;§
   {
       
      
      private const §&!l§:int = 0;
      
      private const §4!9§:int = 1;
      
      private var §-E§:Number;
      
      private var §?!Z§:int;
      
      private var §^w§:Number;
      
      private var §#!s§:Number;
      
      private var §^!C§:int;
      
      private var §'!A§:Number;
      
      private var §1P§:Number;
      
      private var §']§:Number;
      
      private var §@h§:Number;
      
      private var §>!h§:Number;
      
      private var §3S§:Number;
      
      private var §8%§:Number;
      
      private var §=!w§:Number;
      
      private var §`!B§:Number;
      
      private var §#w§:Number;
      
      private var §6!9§:Number;
      
      private var §%m§:Number;
      
      private var §,"1§:Number;
      
      private var §?!B§:Number;
      
      private var §^§:Number;
      
      private var §,!q§:Number;
      
      private var §?L§:Number;
      
      private var §'x§:Number;
      
      private var §^n§:Number;
      
      private var §?e§:Number;
      
      private var §#J§:Number;
      
      private var §?q§:Number;
      
      private var §]!i§:Number;
      
      private var § O§:Number;
      
      private var §#!l§:Number;
      
      private var §3!q§:Number;
      
      private var §8h§:ColorArgb;
      
      private var §?!j§:ColorArgb;
      
      private var §^!"§:ColorArgb;
      
      private var §?"=§:ColorArgb;
      
      public function § ?§(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§'!7§(param1,param2);
         }
         §§push(this.§^!C§);
         §§push(this.§'!A§);
         if(_loc4_)
         {
            §§push(§§pop() + this.§']§);
         }
         §§push(§§pop() / §§pop());
         if(!(_loc5_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param2)
         {
            super(param2,_loc3_,this.§^!C§,§-!V§,§&!A§);
         }
         do
         {
            §[!k§ = false;
         }
         while(_loc5_);
         
      }
      
      public function get §-z§() : int
      {
         return this.§^!C§;
      }
      
      override protected function createParticle() : §#!G§
      {
         return new PDParticle();
      }
      
      private function get §-!^§() : Boolean
      {
         return this.§-z§ >= 20;
      }
      
      override protected function initParticle(param1:§#!G§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§#!G§, param2:Number) : void
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
         §§push(_loc3_.§4!4§ - _loc3_.§=""§);
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc13_)
         {
            §§push(param2);
            if(!(_loc14_ && this))
            {
               §§push(§§pop() > §§pop());
               if(_loc13_ || param2)
               {
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        §§push(param2);
                        if(_loc13_ || param1)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc14_ && _loc3_))
                           {
                              addr97:
                              §§push(Number(§§pop()));
                              if(!(_loc14_ && param1))
                              {
                                 param2 = §§pop();
                                 if(!(_loc14_ && this))
                                 {
                                    _loc3_.§=""§ += param2;
                                    while(true)
                                    {
                                       if(this.§?!Z§ != this.§4!9§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          if(!_loc14_)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                addr1143:
                                                §§push(§§pop());
                                                loop116:
                                                while(true)
                                                {
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(this.§-!^§);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.x - _loc3_.startX);
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       loop9:
                                                                                       while(!_loc14_)
                                                                                       {
                                                                                          §§push(_loc3_.y - _loc3_.startY);
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop11:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                loop12:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0.01);
                                                                                                         }
                                                                                                         addr1083:
                                                                                                      }
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  loop20:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     loop21:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop22:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           loop23:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              loop24:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 loop25:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    loop26:
                                                                                                                                    while(!_loc14_)
                                                                                                                                    {
                                                                                                                                       if(_loc14_ && param1)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop137:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc14_ && this))
                                                                                                                                             {
                                                                                                                                                addr1021:
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                loop75:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   continue loop24;
                                                                                                                                                   loop93:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop75;
                                                                                                                                                      }
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop94:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            _loc9_ = §§pop();
                                                                                                                                                            loop95:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               if(_loc14_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop94;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  continue loop94;
                                                                                                                                                               }
                                                                                                                                                               loop96:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop19;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc3_.radialAcceleration);
                                                                                                                                                                  loop136:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     loop130:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc14_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           loop98:
                                                                                                                                                                           while(!(_loc13_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 continue loop98;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1005:
                                                                                                                                                                           _loc8_ = §§pop();
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              addr964:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                       continue loop93;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop10;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1094:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                    addr1095:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1005);
                                                                                                                                                                           }
                                                                                                                                                                           addr1006:
                                                                                                                                                                           addr998:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc11_ = §§pop();
                                                                                                                                                                           loop100:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 continue loop96;
                                                                                                                                                                              }
                                                                                                                                                                              loop101:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§-!^§);
                                                                                                                                                                                 loop102:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                    loop103:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop104:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop105:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§-!^§);
                                                                                                                                                                                                   loop106:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                         loop107:
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
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().radius = §§pop();
                                                                                                                                                                                                            addr1207:
                                                                                                                                                                                                            loop108:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop109:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc3_.x = §9!^§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                                                                  loop83:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc3_.y = §,!^§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_.radius);
                                                                                                                                                                                                                        addr1157:
                                                                                                                                                                                                                        loop85:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§ O§);
                                                                                                                                                                                                                           loop86:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop87:
                                                                                                                                                                                                                                 while(!_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc3_.§=""§ = _loc3_.§4!4§;
                                                                                                                                                                                                                                    loop88:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1128:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop30:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                             loop31:
                                                                                                                                                                                                                                             while(!_loc14_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                                                                if(_loc13_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc14_ && param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop106;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop116;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop71:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§-!^§);
                                                                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop71;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc13_ || param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop102;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                                                                               if(!(_loc14_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr486:
                                                                                                                                                                                                                                                               if(_loc14_ && this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop35:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param2);
                                                                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop93;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * 2);
                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr512:
                                                                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    loop126:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop130;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                       loop127:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop105;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr833:
                                                                                                                                                                                                                                                                                                if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop127;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                loop133:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                   if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc14_ && this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     break loop35;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop86;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop136;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop93;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr912:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc14_ && this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop20;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            continue loop126;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop137;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop133;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   break loop35;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1083);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       loop122:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                                                                          addr889:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc14_ && this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop94;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop8;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop85;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr912);
                                                                                                                                                                                                                                                                                             §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                             continue loop122;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr529:
                                                                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 param2 = §§pop();
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr439:
                                                                                                                                                                                                                                                                                    loop37:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                                                                                                                                                       loop38:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop95;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                                                                                                                                                          loop39:
                                                                                                                                                                                                                                                                                          while(_loc13_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc13_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                   loop40:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                      loop41:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop().red);
                                                                                                                                                                                                                                                                                                         loop42:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                            loop43:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().red);
                                                                                                                                                                                                                                                                                                               loop44:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(param2);
                                                                                                                                                                                                                                                                                                                  loop45:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     loop46:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        loop47:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop87;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                 loop50:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().green);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop().green);
                                                                                                                                                                                                                                                                                                                                          addr383:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                                                                                                                             addr384:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                addr385:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr382:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    loop55:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                                                       while(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop12;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop6;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop88;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                          loop57:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                             addr311:
                                                                                                                                                                                                                                                                                                                                             while(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                                                                loop59:
                                                                                                                                                                                                                                                                                                                                                while(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                                                   loop60:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(param2);
                                                                                                                                                                                                                                                                                                                                                            while(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr384);
                                                                                                                                                                                                                                                                                                                                                            addr336:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         loop62:
                                                                                                                                                                                                                                                                                                                                                         while(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                               while(_loc13_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop57;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop37;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop62;
                                                                                                                                                                                                                                                                                                                                                                     addr364:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop47;
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc13_ || this))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop60;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop62;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break loop60;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(_loc14_ && param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop46;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc13_ || param2))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop45;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr336);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop59;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop35;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr364);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           loop28:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc13_ || this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop100;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1030:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1009);
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(2 * param2);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§?L§);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr763:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr761:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + _loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop9;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                                                                                                         while(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop83;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1006);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr765:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr761);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr763);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr828:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr202:
                                                                                                                                                                                                                                                                                                                                                                           addr600:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr938);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                                                                     loop68:
                                                                                                                                                                                                                                                                                                                                                                     while(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop68;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop39;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop38;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop107;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr885:
                                                                                                                                                                                                                                                                                                                                                                              addr885:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§-!^§);
                                                                                                                                                                                                                                                                                                                                                                                 break loop31;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr202);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop108;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(2 * param2);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§,!q§);
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr825:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr828);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr825);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                                                                        break loop87;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr1256:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop55;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop44;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr385);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr382);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr383);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop42;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop50;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr618:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr590);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop41;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr256);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr293);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr311);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop87;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop109;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1244:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr961:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr888);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc13_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                                                                   §§goto(addr618);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr672:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                                                                   if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                                                                                                                         addr1284:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            addr1285:
                                                                                                                                                                                                                                                                                                            while(§§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop104;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop101;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1283:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1284);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1274:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1095);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop95;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr889);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr964);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr920);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr512);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr885);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr439);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop103;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr568:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr478);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr118);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr132);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr568);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr791);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                                                                   §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§,!q§);
                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr697:
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr695:
                                                                                                                                                                                                                                                                  §§push(§§pop() + _loc10_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                               §§goto(addr699);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr695);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr697);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr885);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                                                                    §§push(_loc3_.radius);
                                                                                                                                                                                                                                    if(_loc13_)
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
                                                                                                                                                                                                                                    §§goto(addr1244);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1128);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1256);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1128);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1284);
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
                                                                                                                                                         §§goto(addr998);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr1021:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1207);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1021);
                                                                                                                                             continue loop137;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1085);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr590);
                                                                        }
                                                                        addr1116:
                                                                     }
                                                                     §§goto(addr1296);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr1152:
                                                      }
                                                      §§goto(addr1116);
                                                   }
                                                   §§goto(addr1285);
                                                }
                                             }
                                             §§goto(addr1152);
                                          }
                                          §§goto(addr1143);
                                       }
                                       §§goto(addr1274);
                                       if(!(_loc14_ && param1))
                                       {
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr672);
                              }
                              §§goto(addr960);
                           }
                           §§goto(addr1157);
                        }
                        §§goto(addr1021);
                     }
                     §§goto(addr940);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc13_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(_loc13_)
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr1093);
                     }
                  }
                  §§goto(addr840);
               }
               §§goto(addr1283);
            }
            §§goto(addr989);
         }
         §§goto(addr1052);
      }
      
      private function §'!7§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§^w§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§#!s§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               while(true)
               {
                  this.§,!q§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§?L§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§?!Z§ = this.§var §(param1.emitterType);
                        loop4:
                        while(true)
                        {
                           this.§^!C§ = this.§var §(param1.maxParticles);
                           loop5:
                           while(true)
                           {
                              this.§'!A§ = Math.max(0.01,this.§6w§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§1P§ = this.§6w§(param1.particleLifespanVariance);
                                 loop7:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() == 1)
                                    {
                                       while(true)
                                       {
                                          this.§']§ = this.§6w§(param1.particleInterval);
                                          addr722:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr716:
                                    }
                                    else
                                    {
                                       this.§']§ = 0;
                                       while(true)
                                       {
                                          addr206:
                                          if(_loc3_ || param1)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§@h§ = this.§6w§(param1.startParticleSize);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§@h§);
                                          if(!_loc4_)
                                          {
                                             §§push(param2.height);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_)
                                                {
                                                   addr692:
                                                   §§push(§§pop() / param2.width);
                                                }
                                                §§pop().§3S§ = §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   this.§>!h§ = this.§6w§(param1.startParticleSizeVariance);
                                                   loop12:
                                                   for(; _loc3_; while(!(_loc4_ && param1))
                                                   {
                                                      continue loop11;
                                                   })
                                                   {
                                                      §§push(this);
                                                      §§push(this.§>!h§);
                                                      if(_loc3_)
                                                      {
                                                         §§push(param2.height);
                                                         if(!_loc4_)
                                                         {
                                                            addr665:
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               §§push(param2.width);
                                                            }
                                                            §§pop().§8%§ = §§pop();
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(param1.startParticleSizeX.length() != 1)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(param1.startParticleSizeVarianceX.length() != 1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(param1.startParticleSizeY.length() == 1)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§3S§ = this.§6w§(param1.startParticleSizeY);
                                                                                 addr601:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr595:
                                                                           }
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              if(param1.startParticleSizeVarianceY.length() == 1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§8%§ = this.§6w§(param1.startParticleSizeVarianceY);
                                                                                    addr586:
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§@h§ = this.§6w§(param1.startParticleSizeX);
                                                                                             break loop23;
                                                                                          }
                                                                                          addr635:
                                                                                       }
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr580:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(param1.finishParticleSize.length() == 1)
                                                                                 {
                                                                                    loop25:
                                                                                    while(!_loc4_)
                                                                                    {
                                                                                       this.§=!w§ = this.§6w§(param1.finishParticleSize);
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§=!w§);
                                                                                          if(!(_loc4_ && param2))
                                                                                          {
                                                                                             §§push(param2.height);
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                addr557:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(param2.width);
                                                                                                }
                                                                                                §§pop().§#w§ = §§pop();
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr518:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(param1.FinishParticleSizeVariance.length() == 1)
                                                                                                      {
                                                                                                         loop29:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§`!B§ = this.§6w§(param1.FinishParticleSizeVariance);
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§`!B§);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(param2.height);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc4_ && param1))
                                                                                                                     {
                                                                                                                        addr513:
                                                                                                                        §§push(§§pop() / param2.width);
                                                                                                                     }
                                                                                                                     §§pop().§6!9§ = §§pop();
                                                                                                                     loop31:
                                                                                                                     for(; _loc3_; while(!(_loc4_ && param1))
                                                                                                                     {
                                                                                                                        this.§`!B§ = this.§6w§(param1.FinishParticleSizeVarianceX);
                                                                                                                        §§goto(addr475);
                                                                                                                     })
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(param1.finishParticleSizeX.length() == 1)
                                                                                                                           {
                                                                                                                              loop33:
                                                                                                                              while(_loc3_)
                                                                                                                              {
                                                                                                                                 this.§=!w§ = this.§6w§(param1.finishParticleSizeX);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    loop53:
                                                                                                                                    for(; !(_loc4_ && param2); if(!(_loc3_ || param2))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    },§-!V§ = this.§-,§(param1.blendFuncSource),§§goto(addr153))
                                                                                                                                    {
                                                                                                                                       this.§#!l§ = deg2rad(this.§6w§(param1.rotatePerSecond));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc3_ || this)
                                                                                                                                          {
                                                                                                                                             addr273:
                                                                                                                                             if(_loc4_ && param1)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             this.§3!q§ = deg2rad(this.§6w§(param1.rotatePerSecondVariance));
                                                                                                                                             loop55:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ && this)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      this.§8h§ = this.§`!+§(param1.startColor);
                                                                                                                                                      loop56:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                         this.§?!j§ = this.§`!+§(param1.startColorVariance);
                                                                                                                                                         loop57:
                                                                                                                                                         for(; !_loc4_; if(!(_loc4_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr19:
                                                                                                                                                            return;
                                                                                                                                                         })
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  break loop56;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr206);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(_loc3_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop5;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  loop41:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr420);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.§%m§ = deg2rad(this.§6w§(param1.angle));
                                                                                                                                                                           while(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              this.§,"1§ = deg2rad(this.§6w§(param1.angleVariance));
                                                                                                                                                                              loop46:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§?!B§ = this.§6w§(param1.speed);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§^§ = this.§6w§(param1.speedVariance);
                                                                                                                                                                                    addr369:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§'x§ = this.§6w§(param1.radialAcceleration);
                                                                                                                                                                                             break loop57;
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop31;
                                                                                                                                                                                       addr117:
                                                                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop46;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr89:
                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc4_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §3"6§ = this.§6w§(param1.emissionVariance);
                                                                                                                                                                                 addr65:
                                                                                                                                                                                 if(_loc3_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop57;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr153:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §&!A§ = this.§-,§(param1.blendFuncDestination);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop56;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop55;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr117);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr369);
                                                                                                                                                                                       addr113:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§?"=§ = this.§`!+§(param1.finishColorVariance);
                                                                                                                                                                                          continue loop56;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr190:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr722);
                                                                                                                                                                                    §§goto(addr65);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr475:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(param1.finishParticleSizeY.length() != 1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop41;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§#w§ = this.§6w§(param1.finishParticleSizeY);
                                                                                                                                                                                       continue loop41;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr443:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr595);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop21;
                                                                                                                                                                        }
                                                                                                                                                                        addr402:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr420:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  this.§?e§ = this.§6w§(param1.tangentialAcceleration);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_ && this)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop21;
                                                                                                                                                                     }
                                                                                                                                                                     addr330:
                                                                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                     addr608:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§>!h§ = this.§6w§(param1.startParticleSizeVarianceX);
                                                                                                                                                                        break loop55;
                                                                                                                                                                        §§goto(addr330);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop6;
                                                                                                                                                                  addr323:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr586);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr449);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   continue loop29;
                                                                                                                                                }
                                                                                                                                                addr311:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop33;
                                                                                                                                                   }
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   this.§]!i§ = this.§6w§(param1.maxRadiusVariance);
                                                                                                                                                   continue loop55;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§ O§ = this.§6w§(param1.minRadius);
                                                                                                                                             continue loop53;
                                                                                                                                          }
                                                                                                                                          addr45:
                                                                                                                                          if(_loc4_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr52);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr402);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr580);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr586);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                              {
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              §§goto(addr443);
                                                                                                                              §§goto(addr492);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr513);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr478);
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§push(§§pop() / §§pop());
                                                                                          }
                                                                                          §§goto(addr557);
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§goto(addr518);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr589:
                                                                     }
                                                                     §§goto(addr608);
                                                                  }
                                                                  addr602:
                                                               }
                                                               §§goto(addr635);
                                                            }
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§goto(addr665);
                                                   }
                                                   continue loop10;
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr589);
                                                }
                                             }
                                          }
                                          §§goto(addr692);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  §'"3§ = this.§9F§(param1.textureSmoothing);
                  §§goto(addr87);
               }
            }
         }
         §§goto(addr601);
      }
      
      protected function §var §(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §6w§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §#8§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §`!+§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc3_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            loop0:
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               while(true)
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  while(_loc3_)
                  {
                     continue loop0;
                     _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                     if(!(_loc4_ && this))
                     {
                        return _loc2_;
                        addr53:
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function §-,§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§var §(param1));
         if(_loc5_)
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
               if(!(_loc4_ && param1))
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr297:
                           }
                           addr367:
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
                           addr367:
                        }
                        else
                        {
                           addr289:
                           §§push(6);
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr297);
                           }
                           else
                           {
                              addr362:
                           }
                           §§goto(addr367);
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(1);
                                    if(_loc4_)
                                    {
                                       §§goto(addr297);
                                    }
                                 }
                                 else
                                 {
                                    addr349:
                                    §§push(9);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr362);
                                    }
                                 }
                                 §§goto(addr367);
                              }
                              else
                              {
                                 §§push(768);
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(2);
                                             if(_loc4_)
                                             {
                                                addr269:
                                             }
                                             §§goto(addr367);
                                          }
                                          else
                                          {
                                             addr261:
                                             §§push(5);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§goto(addr269);
                                             }
                                             else
                                             {
                                                addr278:
                                                §§push(_loc3_);
                                                if(!(_loc4_ && param1))
                                                {
                                                   addr286:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr289);
                                                      }
                                                      else
                                                      {
                                                         addr340:
                                                         §§push(8);
                                                         if(_loc4_)
                                                         {
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(773);
                                                      if(!_loc4_)
                                                      {
                                                         addr301:
                                                         §§push(_loc3_);
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(7);
                                                                  if(_loc4_ && this)
                                                                  {
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr340);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(774);
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  addr324:
                                                                  §§push(_loc3_);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     addr332:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§goto(addr340);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr349);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(775);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr348:
                                                                           if(§§pop() === _loc3_)
                                                                           {
                                                                              §§goto(addr349);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr367);
                                                                              §§push(10);
                                                                           }
                                                                           §§goto(addr367);
                                                                        }
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                                  §§goto(addr348);
                                                               }
                                                               §§goto(addr367);
                                                            }
                                                            §§goto(addr367);
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                      §§goto(addr367);
                                                   }
                                                   §§goto(addr367);
                                                }
                                                §§goto(addr332);
                                             }
                                          }
                                          §§goto(addr269);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!_loc4_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(3);
                                                      if(_loc4_ && this)
                                                      {
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr367);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      addr227:
                                                      §§push(_loc3_);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(4);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr367);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr301);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr289);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(_loc5_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  addr258:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr261);
                                                                     }
                                                                     §§goto(addr349);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(772);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§goto(addr278);
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                               }
                                                               §§goto(addr286);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                }
                                                §§goto(addr301);
                                             }
                                             §§goto(addr348);
                                          }
                                          §§goto(addr227);
                                       }
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr227);
                              }
                           }
                           §§goto(addr258);
                        }
                     }
                     §§goto(addr297);
                  }
                  §§goto(addr258);
               }
               §§goto(addr269);
            }
            §§goto(addr349);
         }
         §§goto(addr367);
      }
      
      protected function §9F§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§#8§(param1));
         if(!(_loc3_ && param1))
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
               §§push(§%§.§<!U§);
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
                                    §§push(§%§.§]h§);
                                    loop7:
                                    while(!(_loc3_ && this))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc4_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§pop();
                                                      while(_loc4_ || param1)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr56:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§%§.NONE);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr32:
                                                            §§push(§%§.§<!U§);
                                                            if(!(_loc4_ || _loc2_))
                                                            {
                                                               return §§pop();
                                                            }
                                                            if(!(_loc4_ || _loc3_))
                                                            {
                                                               §§goto(addr56);
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop2;
                                                addr118:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(_loc2_);
                                                      break;
                                                   }
                                                   §§goto(addr86);
                                                }
                                                §§goto(addr32);
                                             }
                                             §§goto(addr32);
                                          }
                                          continue loop3;
                                          addr113:
                                       }
                                       §§goto(addr118);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr113);
                     }
                  }
               }
            }
         }
         §§goto(addr145);
      }
   }
}

import § <§.§#!G§;

class PDParticle extends §#!G§
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
