package §#!7§
{
   import §7H§.deg2rad;
   import §?]§.§7l§;
   import §?]§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §5C§
   {
       
      
      private const §5"!§:int = 0;
      
      private const §`U§:int = 1;
      
      private var §5'§:Number;
      
      private var §2!9§:int;
      
      private var §2M§:Number;
      
      private var §^!4§:Number;
      
      private var §<2§:int;
      
      private var §0!i§:Number;
      
      private var §!!'§:Number;
      
      private var §6!F§:Number;
      
      private var §`M§:Number;
      
      private var §@!W§:Number;
      
      private var §`-§:Number;
      
      private var §"!^§:Number;
      
      private var §6!n§:Number;
      
      private var §&%§:Number;
      
      private var §,!m§:Number;
      
      private var §7![§:Number;
      
      private var §[=§:Number;
      
      private var §[#§:Number;
      
      private var § ;§:Number;
      
      private var §7'§:Number;
      
      private var §[!n§:Number;
      
      private var §3K§:Number;
      
      private var §?!J§:Number;
      
      private var §0w§:Number;
      
      private var §4!w§:Number;
      
      private var §`>§:Number;
      
      private var §>!h§:Number;
      
      private var §!l§:Number;
      
      private var §>>§:Number;
      
      private var §?!Z§:Number;
      
      private var §7!C§:Number;
      
      private var §8R§:ColorArgb;
      
      private var §13§:ColorArgb;
      
      private var §>!f§:ColorArgb;
      
      private var §!!0§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§]!t§(param1,param2);
         }
         §§push(this.§<2§);
         §§push(this.§0!i§);
         if(!_loc5_)
         {
            §§push(§§pop() + this.§6!F§);
         }
         §§push(§§pop() / §§pop());
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            super(param2,_loc3_,this.§<2§,§9!_§,§[9§);
            do
            {
               §@!P§ = false;
            }
            while(!_loc4_);
            
         }
      }
      
      public function get §[!z§() : int
      {
         return this.§<2§;
      }
      
      override protected function createParticle() : §=!m§
      {
         return new PDParticle();
      }
      
      private function get §;"§() : Boolean
      {
         return this.§[!z§ >= 20;
      }
      
      override protected function initParticle(param1:§=!m§) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:PDParticle = null;
         var _loc3_:* = NaN;
         _loc2_ = param1 as PDParticle;
         if(!_loc18_)
         {
            §§push(this.§0!i§);
            if(!_loc18_)
            {
               §§push(this.§!!'§);
               if(!(_loc18_ && this))
               {
                  §§push(Math.random() * 2);
                  if(_loc17_ || this)
                  {
                     §§push(§§pop() - 1);
                     if(_loc17_ || _loc3_)
                     {
                        addr166:
                        §§push(§§pop() * §§pop());
                        if(_loc17_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc18_)
                           {
                              §§push(Number(§§pop()));
                           }
                           loop0:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop1:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc18_)
                                 {
                                    if(_loc18_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(0);
                                    if(_loc17_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             _loc2_.alpha = 0;
                                             while(true)
                                             {
                                                _loc2_.§[!v§ = 0;
                                                loop4:
                                                while(_loc17_ || _loc2_)
                                                {
                                                   _loc2_.§6k§ = _loc3_;
                                                   while(_loc17_)
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         _loc2_.x = §^!x§ + this.§2M§ * (Math.random() * 2 - 1);
                                                         loop6:
                                                         while(!_loc18_)
                                                         {
                                                            _loc2_.y = §7p§ + this.§^!4§ * (Math.random() * 2 - 1);
                                                            while(true)
                                                            {
                                                               if(!(_loc18_ && _loc3_))
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr132);
                                    }
                                    §§push(Math.random() * 2);
                                    if(!_loc18_)
                                    {
                                       addr194:
                                       §§push(§§pop() - 1);
                                    }
                                    §§push(§§pop() + §§pop() * §§pop());
                                    if(_loc17_)
                                    {
                                       addr199:
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr200);
                                 }
                                 break;
                              }
                              §§push(this.§[#§);
                              if(_loc17_ || _loc3_)
                              {
                              }
                              §§goto(addr188);
                           }
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr194);
                  }
                  §§goto(addr166);
               }
               §§goto(addr188);
            }
            §§goto(addr199);
         }
         §§goto(addr133);
      }
      
      override protected function advanceParticle(param1:§=!m§, param2:Number) : void
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
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§6k§ - _loc3_.§[!v§);
         if(_loc14_ || this)
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
               if(_loc14_)
               {
                  if(§§pop())
                  {
                     if(!(_loc13_ && this))
                     {
                        §§push(param2);
                        if(_loc14_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc14_ || param1)
                           {
                              addr103:
                              §§push(Number(§§pop()));
                              if(!_loc13_)
                              {
                                 param2 = §§pop();
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    _loc3_.§[!v§ += param2;
                                    loop0:
                                    while(true)
                                    {
                                       if(this.§2!9§ != this.§`U§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          loop1:
                                          while(true)
                                          {
                                             if(!_loc13_)
                                             {
                                                §§push(!§§pop());
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop4:
                                                            while(true)
                                                            {
                                                               if(!(_loc13_ && this))
                                                               {
                                                                  if(!(_loc13_ && param2))
                                                                  {
                                                                     §§pop();
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§;"§);
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              while(true)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_.x - _loc3_.startX);
                                                                                          loop74:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                loop76:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc3_.y - _loc3_.startY);
                                                                                                      loop77:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop78:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc14_ || param2)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  loop115:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           loop117:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              loop118:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(0.01);
                                                                                                                                 loop119:
                                                                                                                                 while(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    loop82:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(0.01);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr1134:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                addr1135:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   break loop119;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1133:
                                                                                                                                       }
                                                                                                                                       loop8:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§;"§);
                                                                                                                                          addr1303:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr1305:
                                                                                                                                                loop11:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      loop12:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§;"§);
                                                                                                                                                         loop13:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                               while(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  §§push(_loc3_.radius);
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.radiusDelta);
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * param2);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().radius = §§pop();
                                                                                                                                                                  while(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     loop16:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_.x = §^!x§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                        loop17:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc3_.y = §7p§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                           loop18:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.radius);
                                                                                                                                                                              addr1208:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§>>§);
                                                                                                                                                                                 loop20:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       loop21:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc3_.§[!v§ = _loc3_.§6k§;
                                                                                                                                                                                          addr1215:
                                                                                                                                                                                          while(_loc14_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                loop27:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                   addr555:
                                                                                                                                                                                                   addr1340:
                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                   while(!(_loc13_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc13_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(_loc13_ && param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop3;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr581:
                                                                                                                                                                                                               while(!_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop18;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1107:
                                                                                                                                                                                                                     loop99:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop17;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                           loop101:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc14_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop117;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                              loop102:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 loop103:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                                                                                                                    loop104:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                                                                       loop105:
                                                                                                                                                                                                                                       for(; !(_loc13_ && param1); while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop77;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop105;
                                                                                                                                                                                                                                          §§goto(addr932);
                                                                                                                                                                                                                                       })
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             loop106:
                                                                                                                                                                                                                                             while(!_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                                                                                                                loop107:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                                                                      loop108:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop102;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop106;
                                                                                                                                                                                                                                                         addr977:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc14_ || this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop108;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               continue loop105;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop102;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop115;
                                                                                                                                                                                                                                                   loop120:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc14_ || param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop107;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(this.§;"§);
                                                                                                                                                                                                                                                      loop121:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                                                                                                                               §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param2);
                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§[!n§);
                                                                                                                                                                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                                                                        if(_loc14_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr718:
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop21;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                                                                                                                              §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                              if(_loc14_ || param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§3K§);
                                                                                                                                                                                                                                                                                    if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr680:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr678:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + _loc11_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                                                                while(_loc14_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                                                                                                                                      addr622:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                                                                                                                                                                            continue loop27;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop82;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc13_ && this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break loop121;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr612);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr736:
                                                                                                                                                                                                                                                                                                addr635:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop125:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc13_ && param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop76;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop103;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                                                                                                                                                                            loop127:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                               loop128:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc13_ && this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop119;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc14_ || param2)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop118;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr929:
                                                                                                                                                                                                                                                                                                                                    loop131:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                       addr841:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop101;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                             addr853:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop127;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop131;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop128;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              loop111:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                                                                                 loop112:
                                                                                                                                                                                                                                                                                                                                 while(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc13_ && param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    while(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       loop114:
                                                                                                                                                                                                                                                                                                                                       while(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc13_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                   continue loop111;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop104;
                                                                                                                                                                                                                                                                                                                                                addr1057:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop74;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc14_ || this))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop112;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr977);
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop114;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop125;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                          break loop112;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1057);
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1020);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1020:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                    addr1103:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                          break loop106;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop78;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr965);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr969);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1020);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr947);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr682:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr678);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr680);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr721:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr718);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc14_ || param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop120;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                                                                                                                         §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(2 * param2);
                                                                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§[!n§);
                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr833:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                     while(_loc13_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1135);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                                                                        §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                        if(_loc14_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(2 * param2);
                                                                                                                                                                                                                                                                           if(_loc14_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§3K§);
                                                                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                                                                 if(_loc14_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr788:
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    if(_loc14_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr786:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + _loc11_);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                             §§goto(addr736);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr792:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1036);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr790:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr786);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr788);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr836:
                                                                                                                                                                                                                                                                     addr838:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr833);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop99;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1133);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1134);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc14_ || param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr947);
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop28;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                               addr581:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop68:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                        §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                        if(!(_loc13_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().skipUpdate = §§pop();
                                                                                                                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc13_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop67:
                                                                                                                                                                                                                           while(!_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop68;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr790);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                                                                                    while(!_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                                                          break loop67;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr584);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break loop67;
                                                                                                                                                                                                                                    §§goto(addr1107);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr344);
                                                                                                                                                                                                                                       addr386:
                                                                                                                                                                                                                                       §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                       §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr227);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr635);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc13_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc14_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc13_ && param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop5;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr496:
                                                                                                                                                                                                                                    while(_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§;"§);
                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr929);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr435);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr203);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr375);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr682);
                                                                                                                                                                                                                           addr153:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr622);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr496);
                                                                                                                                                                                                                  addr487:
                                                                                                                                                                                                                  if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop13;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1028);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr796);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr581);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      addr1341:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            continue loop8;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1330:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                             §§push(_loc3_.radius);
                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * param2);
                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * 2);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().radius = §§pop();
                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1177);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop78;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop12;
                                                                                                                                                                  if(_loc13_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr386);
                                                                                                                                                               }
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                               §§goto(addr1330);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1177);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1101);
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
                                                                                                                           addr1339:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1337:
                                                                                                                     }
                                                                                                                     §§goto(addr1340);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1150:
                                                                                                            }
                                                                                                            §§goto(addr1208);
                                                                                                         }
                                                                                                         if(_loc13_ && param2)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         _loc9_ = §§pop();
                                                                                                         §§goto(addr1000);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1215);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr612);
                                                                                 }
                                                                              }
                                                                              addr1160:
                                                                           }
                                                                           §§goto(addr1342);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1303);
                                                               }
                                                               §§goto(addr1305);
                                                            }
                                                         }
                                                         §§goto(addr1160);
                                                      }
                                                      §§goto(addr1341);
                                                   }
                                                   if(_loc13_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc14_)
                                                      {
                                                         §§goto(addr485);
                                                      }
                                                      §§goto(addr500);
                                                   }
                                                }
                                             }
                                             §§goto(addr1339);
                                          }
                                       }
                                       §§goto(addr1337);
                                    }
                                 }
                                 §§goto(addr838);
                              }
                              §§goto(addr984);
                           }
                           §§goto(addr1055);
                        }
                        §§goto(addr927);
                     }
                     §§goto(addr792);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!(_loc13_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc13_ && _loc3_))
                        {
                           §§goto(addr103);
                        }
                        §§goto(addr876);
                     }
                  }
                  §§goto(addr1150);
               }
               §§goto(addr482);
            }
            §§goto(addr852);
         }
         §§goto(addr1134);
      }
      
      private function §]!t§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§2M§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§^!4§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§[!n§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§3K§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§2!9§ = this.§-!X§(param1.emitterType);
                        while(true)
                        {
                           this.§<2§ = this.§-!X§(param1.maxParticles);
                           while(true)
                           {
                              this.§0!i§ = Math.max(0.01,this.§!D§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§!!'§ = this.§!D§(param1.particleLifespanVariance);
                                 continue loop2;
                                 addr585:
                                 if(!(_loc3_ || param1))
                                 {
                                    continue;
                                 }
                                 §§push(this);
                                 §§push(this.§6!n§);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(param2.height);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && this))
                                       {
                                          addr554:
                                          §§push(§§pop() / param2.width);
                                       }
                                       §§pop().§,!m§ = §§pop();
                                       loop28:
                                       while(true)
                                       {
                                          loop29:
                                          while(true)
                                          {
                                             if(param1.FinishParticleSizeVariance.length() == 1)
                                             {
                                                loop30:
                                                while(!_loc4_)
                                                {
                                                   this.§&%§ = this.§!D§(param1.FinishParticleSizeVariance);
                                                   loop31:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§&%§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(param2.height);
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc3_)
                                                            {
                                                               addr511:
                                                               §§push(§§pop() / param2.width);
                                                            }
                                                            §§pop().§7![§ = §§pop();
                                                            while(true)
                                                            {
                                                               addr478:
                                                               loop33:
                                                               while(true)
                                                               {
                                                                  if(param1.finishParticleSizeX.length() == 1)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§6!n§ = this.§!D§(param1.finishParticleSizeX);
                                                                        addr490:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr484:
                                                                  }
                                                                  loop36:
                                                                  while(true)
                                                                  {
                                                                     if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                     {
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 this.§&%§ = this.§!D§(param1.FinishParticleSizeVarianceX);
                                                                                 loop38:
                                                                                 while(true)
                                                                                 {
                                                                                    addr430:
                                                                                    while(true)
                                                                                    {
                                                                                       if(param1.finishParticleSizeY.length() == 1)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       loop42:
                                                                                       while(true)
                                                                                       {
                                                                                          if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§7![§ = this.§!D§(param1.FinishParticleSizeVarianceY);
                                                                                                addr429:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr423:
                                                                                          }
                                                                                          loop45:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§[=§ = deg2rad(this.§!D§(param1.angle));
                                                                                             loop46:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§[#§ = deg2rad(this.§!D§(param1.angleVariance));
                                                                                                loop47:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§ ;§ = this.§!D§(param1.speed);
                                                                                                   loop48:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr379:
                                                                                                         if(_loc4_ && this)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         this.§7'§ = this.§!D§(param1.speedVariance);
                                                                                                         loop49:
                                                                                                         for(; !_loc4_; if(_loc4_ && param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         },if(!_loc4_)
                                                                                                         {
                                                                                                            this.§!!0§ = this.§>!9§(param1.finishColorVariance);
                                                                                                            §§goto(addr154);
                                                                                                         },§§goto(addr576))
                                                                                                         {
                                                                                                            this.§?!J§ = this.§!D§(param1.radialAcceleration);
                                                                                                            loop50:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               this.§4!w§ = this.§!D§(param1.tangentialAcceleration);
                                                                                                               loop51:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr337:
                                                                                                                     if(_loc4_ && _loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     this.§>!h§ = this.§!D§(param1.maxRadius);
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                                  addr614:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§`-§ = this.§!D§(param1.startParticleSizeY);
                                                                                                                     break loop30;
                                                                                                                  }
                                                                                                                  loop55:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ || param1))
                                                                                                                     {
                                                                                                                        continue loop51;
                                                                                                                     }
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr266:
                                                                                                                           if(!(_loc4_ && param2))
                                                                                                                           {
                                                                                                                              this.§7!C§ = deg2rad(this.§!D§(param1.rotatePerSecondVariance));
                                                                                                                              continue loop46;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§@!W§ = this.§!D§(param1.startParticleSizeVarianceX);
                                                                                                                              §§goto(addr266);
                                                                                                                           }
                                                                                                                           addr627:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop19:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.startParticleSizeY.length() == 1)
                                                                                                                              {
                                                                                                                                 §§goto(addr614);
                                                                                                                              }
                                                                                                                              addr593:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(param1.startParticleSizeVarianceY.length() != 1)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(param1.finishParticleSize.length() == 1)
                                                                                                                                       {
                                                                                                                                          while(!(_loc4_ && this))
                                                                                                                                          {
                                                                                                                                             this.§6!n§ = this.§!D§(param1.finishParticleSize);
                                                                                                                                             §§goto(addr576);
                                                                                                                                          }
                                                                                                                                          §§goto(addr646);
                                                                                                                                       }
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    break loop30;
                                                                                                                                 }
                                                                                                                                 addr557:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       this.§"!^§ = this.§!D§(param1.startParticleSizeVarianceY);
                                                                                                                                       break loop37;
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    addr117:
                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                    {
                                                                                                                                       §@!T§ = this.§+B§(param1.textureSmoothing);
                                                                                                                                       while(param1.emissionVariance.length == 1)
                                                                                                                                       {
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             addr38:
                                                                                                                                             if(!(_loc4_ && param1))
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §8!2§ = this.§!D§(param1.emissionVariance);
                                                                                                                                                         addr57:
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr59:
                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc3_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  break loop55;
                                                                                                                                                               }
                                                                                                                                                               continue loop28;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr281:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop55;
                                                                                                                                                               }
                                                                                                                                                               addr722:
                                                                                                                                                               addr154:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr156:
                                                                                                                                                                     if(_loc4_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                        addr132:
                                                                                                                                                                     }
                                                                                                                                                                     §9!_§ = this.§9!X§(param1.blendFuncSource);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop50;
                                                                                                                                                                        }
                                                                                                                                                                        addr171:
                                                                                                                                                                        addr576:
                                                                                                                                                                        addr576:
                                                                                                                                                                        loop59:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop49;
                                                                                                                                                                           }
                                                                                                                                                                           addr221:
                                                                                                                                                                           addr707:
                                                                                                                                                                           while(_loc3_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              this.§13§ = this.§>!9§(param1.startColorVariance);
                                                                                                                                                                              continue loop59;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§@!W§ = this.§!D§(param1.startParticleSizeVariance);
                                                                                                                                                                              break loop51;
                                                                                                                                                                              §§goto(addr221);
                                                                                                                                                                           }
                                                                                                                                                                           addr221:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr585);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr708:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§`M§ = this.§!D§(param1.startParticleSize);
                                                                                                                                                                                       addr715:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(this.§`M§);
                                                                                                                                                                                          if(!(_loc4_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param2.height);
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr705:
                                                                                                                                                                                                   §§push(§§pop() / param2.width);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§`-§ = §§pop();
                                                                                                                                                                                                §§goto(addr707);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr705);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr735:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr676:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(param1.startParticleSizeX.length() == 1)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§`M§ = this.§!D§(param1.startParticleSizeX);
                                                                                                                                                                                    addr646:
                                                                                                                                                                                    while(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr290:
                                                                                                                                                                                    §§goto(addr715);
                                                                                                                                                                                    if(_loc3_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§?!Z§ = deg2rad(this.§!D§(param1.rotatePerSecond));
                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(param1.startParticleSizeVarianceX.length() != 1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr627);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop6;
                                                                                                                                                                        §§goto(addr38);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop29;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop46;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr708);
                                                                                                                                                                  §§goto(addr156);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop47;
                                                                                                                                                               }
                                                                                                                                                               continue loop31;
                                                                                                                                                            }
                                                                                                                                                            continue loop47;
                                                                                                                                                            addr281:
                                                                                                                                                            addr103:
                                                                                                                                                         }
                                                                                                                                                         loop58:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop48;
                                                                                                                                                            }
                                                                                                                                                            addr305:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§>>§ = this.§!D§(param1.minRadius);
                                                                                                                                                               §§goto(addr281);
                                                                                                                                                               continue loop58;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      continue loop33;
                                                                                                                                                   }
                                                                                                                                                   addr449:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop37;
                                                                                                                                                      }
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop30;
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop42;
                                                                                                                                                      }
                                                                                                                                                      addr729:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§6!F§ = this.§!D§(param1.particleInterval);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop31;
                                                                                                                                                   §§goto(addr735);
                                                                                                                                                }
                                                                                                                                                §§goto(addr281);
                                                                                                                                             }
                                                                                                                                             §§goto(addr132);
                                                                                                                                          }
                                                                                                                                          §§goto(addr57);
                                                                                                                                       }
                                                                                                                                       §§goto(addr24);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr423);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop45;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§@!W§);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(param2.height);
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr675:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(param2.width);
                                                                                                                        }
                                                                                                                        §§pop().§"!^§ = §§pop();
                                                                                                                        §§goto(addr676);
                                                                                                                     }
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr675);
                                                                                                                  §§goto(addr337);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop36;
                                                                                                      }
                                                                                                      §§goto(addr484);
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop38;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr563);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr557);
                                                                        }
                                                                     }
                                                                     §§goto(addr430);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr511);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr593);
                                                }
                                             }
                                             §§goto(addr478);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr554);
                              }
                              if(_loc3_ || param2)
                              {
                                 addr24:
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function §-!X§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §!D§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §"g§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §>!9§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc4_ || this)
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
                  while(_loc4_ || _loc2_)
                  {
                     continue loop0;
                     while(true)
                     {
                        _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                        if(_loc4_)
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
         §§goto(addr87);
      }
      
      protected function §9!X§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§-!X§(param1));
         if(_loc5_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc4_ && _loc2_))
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(0);
                           if(!(_loc4_ && param1))
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
                              addr206:
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 addr209:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(2);
                                       if(_loc4_ && _loc3_)
                                       {
                                          addr299:
                                       }
                                    }
                                    else
                                    {
                                       addr342:
                                       §§push(7);
                                       if(_loc5_)
                                       {
                                          addr345:
                                       }
                                       else
                                       {
                                          addr392:
                                       }
                                    }
                                    §§goto(addr397);
                                 }
                                 else
                                 {
                                    §§push(769);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr234:
                                       §§push(_loc3_);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(3);
                                                if(_loc4_ && this)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr314:
                                                §§push(6);
                                                if(_loc4_)
                                                {
                                                }
                                             }
                                             §§goto(addr397);
                                          }
                                          else
                                          {
                                             §§push(770);
                                             if(!_loc4_)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc4_ && this))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(4);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr397);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr392);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   else
                                                   {
                                                      §§push(771);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            addr288:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(5);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§goto(addr299);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr345);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr345);
                                                            }
                                                            else
                                                            {
                                                               §§push(772);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr314);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr342);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(773);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           addr326:
                                                                           §§push(_loc3_);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              addr334:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr389:
                                                                                    §§push(9);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(774);
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    addr354:
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr370:
                                                                                             §§push(8);
                                                                                             if(!(_loc5_ || this))
                                                                                             {
                                                                                                §§goto(addr392);
                                                                                             }
                                                                                             §§goto(addr397);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr389);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(775);
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             addr388:
                                                                                             if(§§pop() === _loc3_)
                                                                                             {
                                                                                                §§goto(addr389);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr397);
                                                                                                §§push(10);
                                                                                             }
                                                                                             §§goto(addr397);
                                                                                          }
                                                                                          §§goto(addr392);
                                                                                       }
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                    §§goto(addr388);
                                                                                 }
                                                                                 §§goto(addr397);
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                        }
                                                                        §§goto(addr388);
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                         }
                                                         §§goto(addr388);
                                                      }
                                                      §§goto(addr345);
                                                   }
                                                }
                                                §§goto(addr334);
                                             }
                                          }
                                          §§goto(addr397);
                                       }
                                       §§goto(addr288);
                                    }
                                    §§goto(addr326);
                                 }
                              }
                              §§goto(addr334);
                           }
                           §§goto(addr397);
                        }
                        §§goto(addr389);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc5_ || param1)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    addr184:
                                    §§push(1);
                                    if(_loc5_ || this)
                                    {
                                       §§goto(addr397);
                                    }
                                    else
                                    {
                                       §§goto(addr354);
                                    }
                                 }
                                 §§goto(addr370);
                              }
                              else
                              {
                                 §§push(768);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr206);
                                 }
                                 §§goto(addr234);
                              }
                           }
                           §§goto(addr209);
                        }
                     }
                     §§goto(addr392);
                  }
                  §§goto(addr288);
               }
               §§goto(addr397);
            }
            §§goto(addr184);
         }
         §§goto(addr397);
      }
      
      protected function §+B§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§"g§(param1));
         if(_loc3_)
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
               §§push(§7l§.§6!%§);
               addr143:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr144:
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
                                    §§push(§7l§.§`!,§);
                                    addr106:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc3_ || this)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc4_ && _loc3_)
                                             {
                                                break;
                                                addr133:
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(_loc2_);
                                                         }
                                                         else if(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               addr26:
                                                               while(true)
                                                               {
                                                                  §§push(§7l§.§6!%§);
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            addr101:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               continue loop0;
                                                            }
                                                            addr139:
                                                         }
                                                         addr98:
                                                         return §§pop();
                                                      }
                                                      §§goto(addr26);
                                                   }
                                                   addr45:
                                                   return §§pop();
                                                   addr81:
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                                §§goto(addr139);
                                             }
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr138);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        §§goto(addr133);
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
   }
}

import §#!7§.§=!m§;

class PDParticle extends §=!m§
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
