package §>!L§
{
   import §+!g§.b2Color;
   import §+!g§.b2internal;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §,x§:uint = 1;
      
      public static var §`h§:uint = 2;
      
      public static var §@S§:uint = 4;
      
      public static var §=!Z§:uint = 8;
      
      public static var §^!a§:uint = 16;
      
      public static var §-C§:uint = 32;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2DebugDraw)
         {
            §,x§ = 1;
            loop0:
            while(true)
            {
               §`h§ = 2;
               addr92:
               while(true)
               {
                  §@S§ = 4;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §-C§ = 32;
            if(_loc1_ || b2DebugDraw)
            {
               if(_loc1_)
               {
                  break;
               }
               §§goto(addr92);
            }
            §§goto(addr66);
         }
      }
      
      private var §,U§:uint;
      
      b2internal var §3t§:Sprite;
      
      private var §6?§:Number = 1.0;
      
      private var §7!Q§:Number = 1.0;
      
      private var §;!k§:Number = 1.0;
      
      private var §;Y§:Number = 1.0;
      
      private var §16§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            do
            {
               this.§,U§ = 0;
            }
            while(_loc2_);
            
         }
      }
      
      public function §%x§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§,U§ = param1;
         }
      }
      
      public function §,s§() : uint
      {
         return this.§,U§;
      }
      
      public function §#l§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,U§ |= param1;
         }
      }
      
      public function §[!f§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,U§ &= ~param1;
         }
      }
      
      public function §=Z§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3t§ = param1;
         }
      }
      
      public function §<!N§() : Sprite
      {
         return this.§3t§;
      }
      
      public function §"!J§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6?§ = param1;
         }
      }
      
      public function §"s§() : Number
      {
         return this.§6?§;
      }
      
      public function §9'§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!Q§ = param1;
         }
      }
      
      public function §@!_§() : Number
      {
         return this.§7!Q§;
      }
      
      public function §1!"§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§;!k§ = param1;
         }
      }
      
      public function §2!b§() : Number
      {
         return this.§;!k§;
      }
      
      public function §,c§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;Y§ = param1;
         }
      }
      
      public function §9!J§() : Number
      {
         return this.§;Y§;
      }
      
      public function §"!C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§16§ = param1;
         }
      }
      
      public function §@t§() : Number
      {
         return this.§16§;
      }
      
      public function §]!2§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§3t§.graphics.lineStyle(this.§7!Q§,param3.color,this.§;!k§);
            if(_loc5_ || param3)
            {
               addr41:
               this.§3t§.graphics.moveTo(param1[0].x * this.§6?§,param1[0].y * this.§6?§);
            }
            §§push(1);
            if(_loc5_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(_loc4_);
               if(_loc5_ || param2)
               {
                  if(§§pop() >= param2)
                  {
                     if(_loc5_)
                     {
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        if(_loc5_ || this)
                        {
                           this.§3t§.graphics.lineTo(param1[0].x * this.§6?§,param1[0].y * this.§6?§);
                           break;
                        }
                        §§push(_loc4_);
                        if(!(_loc6_ && this))
                        {
                           §§push(§§pop() + 1);
                           if(!_loc6_)
                           {
                              addr150:
                              _loc4_ = int(§§pop());
                              continue;
                           }
                        }
                        §§goto(addr150);
                        addr173:
                     }
                     break;
                  }
                  this.§3t§.graphics.lineTo(param1[_loc4_].x * this.§6?§,param1[_loc4_].y * this.§6?§);
                  §§goto(addr173);
               }
               §§goto(addr150);
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §`w§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§3t§.graphics.lineStyle(this.§7!Q§,param3.color,this.§;!k§);
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  this.§3t§.graphics.moveTo(param1[0].x * this.§6?§,param1[0].y * this.§6?§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§3t§.graphics.beginFill(param3.color,this.§;Y§);
            if(!_loc6_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr38);
            }
            §§goto(addr58);
         }
         §§push(1);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || this)
            {
               if(§§pop() >= param2)
               {
                  for(; !(_loc6_ && param1); this.§3t§.graphics.lineTo(param1[0].x * this.§6?§,param1[0].y * this.§6?§),do
                  {
                     this.§3t§.graphics.endFill();
                  }
                  while(_loc6_);
                  ,if(_loc5_)
                  {
                     return;
                  })
                  {
                     if(!(_loc6_ && param2))
                     {
                        continue;
                     }
                  }
                  continue;
               }
               this.§3t§.graphics.lineTo(param1[_loc4_].x * this.§6?§,param1[_loc4_].y * this.§6?§);
               §§push(_loc4_);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() + 1);
                  if(_loc6_ && param2)
                  {
                  }
                  addr182:
                  _loc4_ = §§pop();
                  continue;
               }
               §§push(int(§§pop()));
            }
            §§goto(addr182);
         }
      }
      
      public function § k§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§3t§.graphics.lineStyle(this.§7!Q§,param3.color,this.§;!k§);
            do
            {
               this.§3t§.graphics.drawCircle(param1.x * this.§6?§,param1.y * this.§6?§,param2 * this.§6?§);
            }
            while(_loc5_ && param1);
            
         }
      }
      
      public function §>g§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§3t§.graphics.lineStyle(this.§7!Q§,param4.color,this.§;!k§);
            loop0:
            while(true)
            {
               this.§3t§.graphics.moveTo(0,0);
               loop1:
               while(true)
               {
                  this.§3t§.graphics.beginFill(param4.color,this.§;Y§);
                  while(true)
                  {
                     this.§3t§.graphics.drawCircle(param1.x * this.§6?§,param1.y * this.§6?§,param2 * this.§6?§);
                     while(!(_loc5_ && param3))
                     {
                        if(!_loc5_)
                        {
                           this.§3t§.graphics.endFill();
                           while(_loc6_)
                           {
                              while(true)
                              {
                                 this.§3t§.graphics.moveTo(param1.x * this.§6?§,param1.y * this.§6?§);
                                 continue loop1;
                              }
                              return;
                           }
                           continue;
                           addr100:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §-!!§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§3t§.graphics.lineStyle(this.§7!Q§,param3.color,this.§;!k§);
            while(true)
            {
               this.§3t§.graphics.moveTo(param1.x * this.§6?§,param1.y * this.§6?§);
               loop1:
               while(!_loc5_)
               {
                  while(true)
                  {
                     this.§3t§.graphics.lineTo(param2.x * this.§6?§,param2.y * this.§6?§);
                     if(_loc4_ || param3)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §%j§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§3t§.graphics.lineStyle(this.§7!Q§,16711680,this.§;!k§);
            loop0:
            while(true)
            {
               this.§3t§.graphics.moveTo(param1.position.x * this.§6?§,param1.position.y * this.§6?§);
               loop1:
               do
               {
                  this.§3t§.graphics.lineTo((param1.position.x + this.§16§ * param1.R.col1.x) * this.§6?§,(param1.position.y + this.§16§ * param1.R.col1.y) * this.§6?§);
                  while(true)
                  {
                     this.§3t§.graphics.lineStyle(this.§7!Q§,65280,this.§;!k§);
                     loop3:
                     while(_loc2_ || _loc2_)
                     {
                        this.§3t§.graphics.moveTo(param1.position.x * this.§6?§,param1.position.y * this.§6?§);
                        while(!_loc3_)
                        {
                           this.§3t§.graphics.lineTo((param1.position.x + this.§16§ * param1.R.col2.x) * this.§6?§,(param1.position.y + this.§16§ * param1.R.col2.y) * this.§6?§);
                           if(!_loc3_)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               while(!_loc2_);
               
            }
         }
      }
   }
}
