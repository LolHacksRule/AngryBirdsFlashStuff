package §0!I§
{
   import §^!+§.Texture;
   import §^!+§.§]-§;
   import §`s§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §@C§
   {
       
      
      private const § !_§:int = 0;
      
      private const §"!s§:int = 1;
      
      private var §#+§:Number;
      
      private var §@!G§:int;
      
      private var §+[§:Number;
      
      private var §%!f§:Number;
      
      private var §6R§:int;
      
      private var §#!2§:Number;
      
      private var §&!+§:Number;
      
      private var §0$§:Number;
      
      private var §1!E§:Number;
      
      private var §"!%§:Number;
      
      private var §=w§:Number;
      
      private var §4G§:Number;
      
      private var §7a§:Number;
      
      private var §&!<§:Number;
      
      private var §@O§:Number;
      
      private var §#Q§:Number;
      
      private var §&!p§:Number;
      
      private var §>3§:Number;
      
      private var §5y§:Number;
      
      private var §=!n§:Number;
      
      private var §+K§:Number;
      
      private var §^!I§:Number;
      
      private var §9J§:Number;
      
      private var §0!g§:Number;
      
      private var §22§:Number;
      
      private var §>f§:Number;
      
      private var §-!P§:Number;
      
      private var §7!U§:Number;
      
      private var §0-§:Number;
      
      private var §4y§:Number;
      
      private var §8n§:Number;
      
      private var §7!?§:ColorArgb;
      
      private var §0]§:ColorArgb;
      
      private var §^!J§:ColorArgb;
      
      private var §7!D§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§9!K§(param1,param2);
         }
         §§push(this.§6R§);
         §§push(this.§#!2§);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() + this.§0$§);
         }
         §§push(§§pop() / §§pop());
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            super(param2,_loc3_,this.§6R§,§=v§,§>y§);
         }
         do
         {
            §<!h§ = false;
         }
         while(_loc4_);
         
      }
      
      public function get §9N§() : int
      {
         return this.§6R§;
      }
      
      override protected function createParticle() : §7v§
      {
         return new PDParticle();
      }
      
      private function get §]!F§() : Boolean
      {
         return this.§9N§ >= 20;
      }
      
      override protected function initParticle(param1:§7v§) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:PDParticle = null;
         var _loc3_:* = NaN;
         _loc2_ = param1 as PDParticle;
         if(_loc18_ || param1)
         {
            §§push(this.§#!2§);
            if(!_loc17_)
            {
               §§push(this.§&!+§);
               if(_loc18_ || _loc2_)
               {
                  §§push(Math.random() * 2);
                  if(_loc18_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc18_ || _loc2_)
                     {
                        addr182:
                        §§push(§§pop() * §§pop());
                        if(!(_loc17_ && this))
                        {
                           addr190:
                           §§push(§§pop() + §§pop());
                           loop26:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              if(_loc18_ || this)
                              {
                                 _loc3_ = §§pop();
                                 loop27:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc18_)
                                    {
                                       break;
                                    }
                                    continue loop26;
                                    addr125:
                                    if(!(_loc18_ || this))
                                    {
                                       continue;
                                    }
                                    _loc2_.§%p§ = 0;
                                    loop30:
                                    while(true)
                                    {
                                       _loc2_.§with§ = _loc3_;
                                       while(true)
                                       {
                                          if(_loc18_)
                                          {
                                             if(_loc18_ || param1)
                                             {
                                                _loc2_.x = §%v§ + this.§+[§ * (Math.random() * 2 - 1);
                                                loop32:
                                                while(true)
                                                {
                                                   _loc2_.y = §@!k§ + this.§%!f§ * (Math.random() * 2 - 1);
                                                   while(true)
                                                   {
                                                      addr51:
                                                      addr42:
                                                      while(true)
                                                      {
                                                         _loc2_.startX = §%v§;
                                                         continue loop32;
                                                      }
                                                      if(!(_loc18_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      if(true)
                                                      {
                                                         §§push(this.§&!p§);
                                                         if(!_loc17_)
                                                         {
                                                            break loop27;
                                                         }
                                                         addr225:
                                                         §§push(Number(§§pop()));
                                                         break loop26;
                                                      }
                                                      §§goto(addr51);
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          continue loop30;
                                       }
                                       while(!(_loc17_ && this))
                                       {
                                          §§goto(addr125);
                                       }
                                       §§goto(addr148);
                                    }
                                 }
                                 addr205:
                                 §§push(this.§>3§);
                                 if(_loc18_ || _loc3_)
                                 {
                                    addr222:
                                    §§push(Math.random() * 2);
                                    if(!_loc17_)
                                    {
                                       addr220:
                                       §§push(§§pop() - 1);
                                    }
                                    §§push(§§pop() + §§pop() * §§pop());
                                    if(_loc18_)
                                    {
                                       §§goto(addr225);
                                    }
                                    break;
                                 }
                                 §§goto(addr222);
                              }
                              break;
                           }
                           var _loc4_:* = §§pop();
                           §§push(this.§5y§);
                           if(_loc18_ || param1)
                           {
                              §§push(this.§=!n§);
                              if(!(_loc17_ && param1))
                              {
                                 §§push(Math.random() * 2);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc17_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc17_ && param1))
                           {
                              §§push(_loc2_);
                              §§push(_loc5_);
                              if(!_loc17_)
                              {
                                 §§push(§§pop() * Math.cos(_loc4_));
                              }
                              §§pop().velocityX = §§pop();
                              loop0:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 §§push(_loc5_);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() * -Math.sin(_loc4_));
                                 }
                                 §§pop().velocityY = §§pop();
                                 addr437:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    §§push(this.§-!P§);
                                    if(_loc18_ || _loc2_)
                                    {
                                       §§push(this.§7!U§);
                                       if(!(_loc17_ && param1))
                                       {
                                          §§push(Math.random() * 2);
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().radius = §§pop();
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr301);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr182);
               }
               §§goto(addr190);
            }
            §§goto(addr205);
         }
         addr148:
      }
      
      override protected function advanceParticle(param1:§7v§, param2:Number) : void
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
         §§push(_loc3_.§with§ - _loc3_.§%p§);
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc14_ && param1))
         {
            §§push(param2);
            if(_loc13_ || param2)
            {
               §§push(§§pop() > §§pop());
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(_loc13_ || param2)
                     {
                        §§push(param2);
                        if(_loc13_ || param2)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc14_)
                           {
                              addr102:
                              §§push(Number(§§pop()));
                              if(_loc13_ || param1)
                              {
                                 param2 = §§pop();
                                 if(!_loc14_)
                                 {
                                    _loc3_.§%p§ += param2;
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    if(this.§@!G§ != this.§"!s§)
                                    {
                                       §§push(_loc3_.skipUpdate);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(!§§pop());
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
                                                      while(true)
                                                      {
                                                         if(!(_loc14_ && this))
                                                         {
                                                            §§push(this.§]!F§);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  while(true)
                                                                  {
                                                                     addr1217:
                                                                     loop140:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop141:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.x - _loc3_.startX);
                                                                              loop103:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop104:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    loop105:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.y - _loc3_.startY);
                                                                                       loop106:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr1208:
                                                                                          loop77:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             loop78:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                loop79:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      loop81:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc14_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(0.01);
                                                                                                            loop82:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  loop83:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        addr1198:
                                                                                                                        §§push(0.01);
                                                                                                                        loop139:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop138:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr1166:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    loop85:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       loop86:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          loop87:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                loop89:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   loop90:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      loop91:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         loop92:
                                                                                                                                                         while(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            loop93:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc14_ && param2)
                                                                                                                                                               {
                                                                                                                                                                  continue loop89;
                                                                                                                                                               }
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               _loc9_ = §§pop();
                                                                                                                                                               loop94:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     loop95:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr1139:
                                                                                                                                                                        loop96:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc10_ = §§pop();
                                                                                                                                                                           addr1140:
                                                                                                                                                                           loop97:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              loop98:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 loop99:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                                                                    loop100:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc14_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc13_ || _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop103;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                             addr1056:
                                                                                                                                                                                             if(_loc14_ && _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop93;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop99;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1064:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          loop11:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc3_.y = §@!k§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                                             addr1266:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.radius);
                                                                                                                                                                                                addr1246:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§0-§);
                                                                                                                                                                                                   addr1248:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc3_.§%p§ = _loc3_.§with§;
                                                                                                                                                                                                            addr1253:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1249:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop17:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop18:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                            loop19:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                               loop20:
                                                                                                                                                                                                               while(!_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc14_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop4;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop3;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc13_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop21:
                                                                                                                                                                                                                        while(_loc13_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc14_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 addr663:
                                                                                                                                                                                                                                 loop22:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§]!F§);
                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr505:
                                                                                                                                                                                                                                          if(_loc14_ && this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop140;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc14_ && param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop62:
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
                                                                                                                                                                                                                                                      addr128:
                                                                                                                                                                                                                                                      if(_loc14_ && param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc13_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr163:
                                                                                                                                                                                                                                                               if(!(_loc14_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                        addr142:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop62;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr786:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                                                                                                                           §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                                                                              if(_loc13_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§^!I§);
                                                                                                                                                                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr740:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr738:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + _loc11_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop105;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop22;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop94;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop100;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr742:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr738);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr740);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop62;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop83;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                     loop47:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                        addr335:
                                                                                                                                                                                                                                                                        loop48:
                                                                                                                                                                                                                                                                        while(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().blue);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                 while(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                    if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(param2);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             addr376:
                                                                                                                                                                                                                                                                                             loop52:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                while(!_loc14_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr525:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§]!F§);
                                                                                                                                                                                                                                                                                                            addr527:
                                                                                                                                                                                                                                                                                                            loop23:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              loop24:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr560:
                                                                                                                                                                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop91;
                                                                                                                                                                                                                                                                                                                                                continue loop92;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop90;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr577:
                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop139;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop81;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      param2 = §§pop();
                                                                                                                                                                                                                                                                                                                                                      loop25:
                                                                                                                                                                                                                                                                                                                                                      for(; !(_loc14_ && param2); while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                                                                                                                                                                                                                                  loop28:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                                                                 break loop48;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr425:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1249);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr912:
                                                                                                                                                                                                                                                                                                                                                                           while(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(2 * param2);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§^!I§);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr846:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr844:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + _loc11_);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1253);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr848:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr844);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr846);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§]!F§);
                                                                                                                                                                                                                                                                                                                                                                                 break loop21;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop97;
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr912);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr912:
                                                                                                                                                                                                                                                                                                                                                                           addr972:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1253);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                                                                     addr304:
                                                                                                                                                                                                                                                                                                                                                                     addr673:
                                                                                                                                                                                                                                                                                                                                                                     loop55:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc14_ && this)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop28;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop78;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                                                                                                                                              loop56:
                                                                                                                                                                                                                                                                                                                                                                              while(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop89;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop141;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop18;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              loop108:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                                                 addr977:
                                                                                                                                                                                                                                                                                                                                                                                 while(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc14_ && this)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop96;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                                                                                                       addr989:
                                                                                                                                                                                                                                                                                                                                                                                       addr948:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc14_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop91;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          while(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                break loop24;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1064);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             continue loop108;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr948:
                                                                                                                                                                                                                                                                                                                                                                                       while(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop95;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop98;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1011:
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1012);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr655:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                                                                                                                                                 addr1383:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                    addr1384:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                       addr1385:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             break loop23;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr1348:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1349:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§]!F§);
                                                                                                                                                                                                                                                                                                                                                                                                   addr1352:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                                                                                                            addr1374:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * param2);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * 2);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§pop().radius = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1343);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr1353:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr1381:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           while(_loc13_)
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
                                                                                                                                                                                                                                                                                                                                                                              break loop25;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop0;
                                                                                                                                                                                                                                                                                                                                                                           addr1307:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1350);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr673:
                                                                                                                                                                                                                                                                                                                                                                     addr1008:
                                                                                                                                                                                                                                                                                                                                                                     while(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr655);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                           addr1016:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                                                                                                                                       continue loop91;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop106;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop78;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop87;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    while(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr948);
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1016);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr997);
                                                                                                                                                                                                                                                                                                                                                                                    addr943:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop82;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop86;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1097:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1122:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1123);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1016);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr948);
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr673);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr989);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr742);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(2 * param2);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§+K§);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr909:
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                              if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr912);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr867:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop25;
                                                                                                                                                                                                                                                                                                                                                      },§§goto(addr703))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                                                                                                                                                                                                                               continue loop25;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr470:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1267:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc3_.x = §%v§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1343:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1267);
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr593);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr593:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr977);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr943);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr948);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr577);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1056);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop138;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1122);
                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1119:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1049:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1016);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr560);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1008);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr470);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr1384);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                               addr1387:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§]!F§);
                                                                                                                                                                                                                                                                                                                  addr1347:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1348);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr480);
                                                                                                                                                                                                                                                                                                      §§goto(addr163);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop52;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr412);
                                                                                                                                                                                                                                                                                                   §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr434);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                                                                             if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr293);
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr432);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr414);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr433);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr376);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr431);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr430:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                              if(_loc14_ && param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                              §§goto(addr304);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr430);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr428);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop83;
                                                                                                                                                                                                                                                                  §§goto(addr703);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr380);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr181);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc13_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop22;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr848);
                                                                                                                                                                                                                                                         addr156:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr142);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr525);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr527);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr505);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                                                                    §§goto(addr673);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr663:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1383);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1349);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc13_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr867);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                                                                 §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                    if(!(_loc14_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§+K§);
                                                                                                                                                                                                                                       if(_loc13_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr784:
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr782:
                                                                                                                                                                                                                                                §§push(§§pop() + _loc10_);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                             §§goto(addr786);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr782);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr784);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1347);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr523);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1385);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop6;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop81;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop94;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1097);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc14_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc14_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop104;
                                                                                                                                                                        }
                                                                                                                                                                        _loc11_ = §§pop();
                                                                                                                                                                        §§goto(addr972);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1266);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop79;
                                                                                                                                                         }
                                                                                                                                                         continue loop85;
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
                                                                                                                        addr1198:
                                                                                                                     }
                                                                                                                     §§goto(addr1353);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1166);
                                                                                                               if(!(_loc13_ || _loc3_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc13_ || _loc3_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr1119);
                                                                                                                  }
                                                                                                                  addr1118:
                                                                                                               }
                                                                                                               §§goto(addr1248);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1246);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop77;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr663);
                                                                     }
                                                                  }
                                                                  addr1216:
                                                               }
                                                               §§goto(addr1352);
                                                            }
                                                         }
                                                         §§goto(addr1387);
                                                      }
                                                   }
                                                }
                                                §§goto(addr1216);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr1381);
                                 }
                              }
                              §§goto(addr1208);
                              addr85:
                           }
                           §§goto(addr1012);
                        }
                        §§goto(addr1198);
                     }
                     §§goto(addr1140);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!(_loc14_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc14_ && _loc3_))
                        {
                           §§goto(addr102);
                        }
                        §§goto(addr1139);
                     }
                  }
                  §§goto(addr1198);
               }
               §§goto(addr1217);
            }
            §§goto(addr1118);
         }
         §§goto(addr85);
      }
      
      private function §9!K§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§+[§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§%!f§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§+K§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§^!I§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§@!G§ = this.§'`§(param1.emitterType);
                        while(true)
                        {
                           this.§6R§ = this.§'`§(param1.maxParticles);
                           loop5:
                           while(true)
                           {
                              this.§#!2§ = Math.max(0.01,this.§=7§(param1.particleLifeSpan));
                              while(true)
                              {
                                 this.§&!+§ = this.§=7§(param1.particleLifespanVariance);
                                 addr730:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() == 1)
                                    {
                                       while(true)
                                       {
                                          this.§0$§ = this.§=7§(param1.particleInterval);
                                          addr722:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr716:
                                    }
                                    else
                                    {
                                       this.§0$§ = 0;
                                       while(true)
                                       {
                                       }
                                       addr709:
                                    }
                                    while(true)
                                    {
                                       this.§1!E§ = this.§=7§(param1.startParticleSize);
                                       addr702:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§1!E§);
                                          if(!_loc4_)
                                          {
                                             §§push(param2.height);
                                             if(_loc3_ || param1)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_)
                                                {
                                                   addr685:
                                                   §§push(§§pop() / param2.width);
                                                }
                                                §§pop().§=w§ = §§pop();
                                                continue loop5;
                                             }
                                          }
                                          §§goto(addr685);
                                       }
                                    }
                                    addr229:
                                    if(_loc3_ || _loc3_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 loop44:
                                 while(!(_loc4_ && param2))
                                 {
                                    loop45:
                                    while(true)
                                    {
                                       this.§&!p§ = deg2rad(this.§=7§(param1.angle));
                                       loop46:
                                       while(true)
                                       {
                                          this.§>3§ = deg2rad(this.§=7§(param1.angleVariance));
                                          loop47:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop2;
                                             }
                                             addr370:
                                             if(_loc3_ || param2)
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§5y§ = this.§=7§(param1.speed);
                                                   continue loop46;
                                                }
                                                §§goto(addr709);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   this.§4G§ = this.§=7§(param1.startParticleSizeVarianceY);
                                                   break loop47;
                                                   §§goto(addr370);
                                                }
                                                addr581:
                                             }
                                             addr317:
                                             loop49:
                                             for(; !(_loc4_ && param1); while(true)
                                             {
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue loop49;
                                                }
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                this.§7!U§ = this.§=7§(param1.maxRadiusVariance);
                                                §§goto(addr251);
                                             },continue loop1)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop44;
                                                }
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.§9J§ = this.§=7§(param1.radialAcceleration);
                                                      loop50:
                                                      for(; _loc3_; if(!(_loc3_ || this))
                                                      {
                                                         continue;
                                                      },addr265:,if(_loc3_ || this)
                                                      {
                                                         this.§0-§ = this.§=7§(param1.minRadius);
                                                         while(true)
                                                         {
                                                            if(_loc3_ || param2)
                                                            {
                                                               §§goto(addr229);
                                                            }
                                                         }
                                                         §§goto(addr730);
                                                         addr222:
                                                      }
                                                      else
                                                      {
                                                         while(!(_loc4_ && param2))
                                                         {
                                                            while(true)
                                                            {
                                                               if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                               {
                                                                  while(_loc3_)
                                                                  {
                                                                     this.§#Q§ = this.§=7§(param1.FinishParticleSizeVarianceY);
                                                                     continue loop44;
                                                                     addr186:
                                                                     if(_loc4_ && param2)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        addr195:
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              this.§7!?§ = this.§6!b§(param1.startColor);
                                                                              while(_loc3_)
                                                                              {
                                                                                 this.§0]§ = this.§6!b§(param1.startColorVariance);
                                                                                 while(true)
                                                                                 {
                                                                                    this.§^!J§ = this.§6!b§(param1.finishColor);
                                                                                    addr156:
                                                                                    loop61:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§7!D§ = this.§6!b§(param1.finishColorVariance);
                                                                                       loop62:
                                                                                       while(true)
                                                                                       {
                                                                                          §=v§ = this.§!v§(param1.blendFuncSource);
                                                                                          addr122:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_ || param1)
                                                                                             {
                                                                                                continue loop61;
                                                                                             }
                                                                                             continue loop62;
                                                                                          }
                                                                                          §§goto(addr251);
                                                                                       }
                                                                                    }
                                                                                    if(_loc4_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §0x§ = this.§=7§(param1.emissionVariance);
                                                                                          §§goto(addr65);
                                                                                       }
                                                                                       §§goto(addr450);
                                                                                    }
                                                                                    §§goto(addr428);
                                                                                 }
                                                                              }
                                                                              while(_loc3_)
                                                                              {
                                                                                 §§goto(addr186);
                                                                              }
                                                                              continue loop49;
                                                                           }
                                                                           §§goto(addr722);
                                                                        }
                                                                        §§goto(addr633);
                                                                     }
                                                                     §§goto(addr521);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop45;
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr444);
                                                            }
                                                            §§goto(addr594);
                                                            §§goto(addr436);
                                                         }
                                                         addr436:
                                                         §§goto(addr702);
                                                      },§§goto(addr568))
                                                      {
                                                         this.§22§ = this.§=7§(param1.tangentialAcceleration);
                                                         while(!_loc4_)
                                                         {
                                                            this.§-!P§ = this.§=7§(param1.maxRadius);
                                                            continue loop49;
                                                            while(!(_loc4_ && param1))
                                                            {
                                                               continue loop50;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§7a§);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(param2.height);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr553:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc3_ || param2)
                                                                  {
                                                                     §§push(param2.width);
                                                                  }
                                                                  §§pop().§@O§ = §§pop();
                                                                  continue loop2;
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                            }
                                                            §§goto(addr553);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr457);
                                                      }
                                                   }
                                                   §§goto(addr607);
                                                }
                                                §§goto(addr515);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr562);
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
         §§goto(addr156);
      }
      
      protected function §'`§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §=7§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §=!-§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §6!b§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc3_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
            }
            addr94:
         }
         loop1:
         do
         {
            _loc2_.blue = parseFloat(param1.attribute("blue"));
            while(!_loc3_)
            {
               _loc2_.alpha = parseFloat(param1.attribute("alpha"));
               if(_loc4_ || param1)
               {
                  continue loop1;
               }
            }
            §§goto(addr94);
         }
         while(_loc3_);
         
         return _loc2_;
      }
      
      protected function §!v§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§'`§(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(0);
               if(_loc5_ || param1)
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§push(0);
                           if(!(_loc5_ || _loc2_))
                           {
                              addr215:
                           }
                        }
                        else
                        {
                           addr253:
                           §§push(4);
                           if(_loc4_ && _loc2_)
                           {
                              addr265:
                              §§push(_loc3_);
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(5);
                                       if(_loc5_ || param1)
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
                                       addr379:
                                       §§push(9);
                                       if(!_loc5_)
                                       {
                                       }
                                    }
                                    §§goto(addr387);
                                 }
                                 else
                                 {
                                    §§push(772);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc4_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr304:
                                                §§push(6);
                                                if(_loc5_)
                                                {
                                                   addr307:
                                                }
                                                else
                                                {
                                                   addr335:
                                                }
                                                §§goto(addr387);
                                             }
                                             else
                                             {
                                                §§goto(addr379);
                                             }
                                          }
                                          else
                                          {
                                             §§push(773);
                                             if(_loc5_ || _loc2_)
                                             {
                                             }
                                             §§goto(addr335);
                                          }
                                          §§goto(addr335);
                                       }
                                       addr378:
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr379);
                                       }
                                       else
                                       {
                                          §§goto(addr387);
                                          §§push(10);
                                       }
                                       §§goto(addr387);
                                    }
                                    addr316:
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       addr319:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(7);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§goto(addr335);
                                             }
                                          }
                                          else
                                          {
                                             addr370:
                                             §§push(8);
                                             if(_loc4_)
                                             {
                                             }
                                          }
                                          §§goto(addr387);
                                       }
                                       else
                                       {
                                          §§push(774);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr344:
                                             §§push(_loc3_);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                addr362:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§goto(addr370);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr379);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(775);
                                                   if(_loc4_)
                                                   {
                                                   }
                                                   addr382:
                                                   §§goto(addr387);
                                                }
                                                §§goto(addr382);
                                             }
                                             §§goto(addr378);
                                          }
                                       }
                                       §§goto(addr378);
                                       §§push(_loc3_);
                                    }
                                    §§goto(addr362);
                                 }
                              }
                              §§goto(addr378);
                           }
                        }
                        §§goto(addr387);
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           addr173:
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              addr176:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr207:
                                    §§push(2);
                                    if(_loc5_ || param1)
                                    {
                                       §§goto(addr215);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(768);
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §§goto(addr207);
                                          }
                                          else
                                          {
                                             §§goto(addr379);
                                          }
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr387);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr316);
                                                      }
                                                   }
                                                   §§goto(addr379);
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      addr242:
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc4_ && param1))
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
                                                         §§goto(addr307);
                                                      }
                                                   }
                                                   §§goto(addr387);
                                                }
                                             }
                                             §§goto(addr362);
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr382);
                                    }
                                    §§goto(addr378);
                                 }
                                 §§goto(addr344);
                              }
                              §§goto(addr387);
                           }
                           §§goto(addr319);
                        }
                     }
                     §§goto(addr335);
                  }
                  §§goto(addr176);
               }
               §§goto(addr173);
            }
            §§goto(addr253);
         }
         §§goto(addr387);
      }
      
      protected function §9!S§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§=!-§(param1));
         if(_loc4_ || _loc3_)
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
               §§push(§]-§.§![§);
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
                                 for(; !_loc3_; while(_loc3_ && _loc2_)
                                 {
                                    continue loop6;
                                 },return §§pop())
                                 {
                                    §§push(§]-§.§<! §);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc4_)
                                       {
                                          if(_loc3_ && _loc3_)
                                          {
                                             break;
                                             addr134:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr145:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc4_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(§]-§.NONE);
                                                         if(!_loc4_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!(_loc4_ || param1))
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                      }
                                                   }
                                                   addr144:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(_loc2_);
                                                            continue loop6;
                                                         }
                                                         continue loop5;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr145);
                                                      }
                                                   }
                                                   §§push(§]-§.§![§);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                   §§goto(addr73);
                                                }
                                                return §§pop();
                                             }
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr144);
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr134);
                     }
                  }
               }
            }
         }
         §§goto(addr145);
      }
   }
}

import §0!I§.§7v§;

class PDParticle extends §7v§
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
