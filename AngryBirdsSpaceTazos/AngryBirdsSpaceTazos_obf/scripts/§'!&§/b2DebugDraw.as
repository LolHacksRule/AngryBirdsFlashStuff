package §'!&§
{
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §@!'§.b2Color;
   import §@!'§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §`!a§:uint = 1;
      
      public static var §%H§:uint = 2;
      
      public static var §=§:uint = 4;
      
      public static var §[!4§:uint = 8;
      
      public static var §7!P§:uint = 16;
      
      public static var §<!Y§:uint = 32;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`!a§ = 1;
            while(true)
            {
               §%H§ = 2;
            }
            addr86:
         }
         loop1:
         while(true)
         {
            §=§ = 4;
            loop2:
            while(true)
            {
               §[!4§ = 8;
               addr60:
               while(!_loc2_)
               {
                  §7!P§ = 16;
                  continue loop2;
               }
               continue loop1;
            }
         }
      }
      
      private var §-!]§:uint;
      
      b2internal var §97§:Sprite;
      
      private var §`!J§:Number = 1.0;
      
      private var §5!T§:Number = 1.0;
      
      private var §@!7§:Number = 1.0;
      
      private var §!!$§:Number = 1.0;
      
      private var §@";§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.§-!]§ = 0;
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §2X§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-!]§ = param1;
         }
      }
      
      public function §"a§() : uint
      {
         return this.§-!]§;
      }
      
      public function §]N§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!]§ |= param1;
         }
      }
      
      public function §"!7§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§-!]§ &= ~param1;
         }
      }
      
      public function §0"$§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§97§ = param1;
         }
      }
      
      public function §9!L§() : Sprite
      {
         return this.§97§;
      }
      
      public function §>"-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`!J§ = param1;
         }
      }
      
      public function § "@§() : Number
      {
         return this.§`!J§;
      }
      
      public function §5l§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§5!T§ = param1;
         }
      }
      
      public function §8C§() : Number
      {
         return this.§5!T§;
      }
      
      public function § !H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!7§ = param1;
         }
      }
      
      public function §4!8§() : Number
      {
         return this.§@!7§;
      }
      
      public function §^v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§!!$§ = param1;
         }
      }
      
      public function §1",§() : Number
      {
         return this.§!!$§;
      }
      
      public function §[!3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§@";§ = param1;
         }
      }
      
      public function §!!L§() : Number
      {
         return this.§@";§;
      }
      
      public function §?I§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§97§.graphics.lineStyle(this.§5!T§,param3.color,this.§@!7§);
            if(!(_loc5_ && param3))
            {
               addr41:
               this.§97§.graphics.moveTo(param1[0].x * this.§`!J§,param1[0].y * this.§`!J§);
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(_loc5_ && this)
                  {
                     break;
                  }
                  if(_loc6_ || this)
                  {
                     this.§97§.graphics.lineTo(param1[0].x * this.§`!J§,param1[0].y * this.§`!J§);
                     break;
                  }
                  loop1:
                  while(_loc5_ && param1)
                  {
                     while(true)
                     {
                        _loc4_++;
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§97§.graphics.lineTo(param1[_loc4_].x * this.§`!J§,param1[_loc4_].y * this.§`!J§);
               §§goto(addr153);
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §2!g§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§97§.graphics.lineStyle(this.§5!T§,param3.color,this.§@!7§);
         }
         loop0:
         while(true)
         {
            addr37:
            addr75:
            while(true)
            {
               this.§97§.graphics.moveTo(param1[0].x * this.§`!J§,param1[0].y * this.§`!J§);
               continue loop0;
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  while(!(_loc6_ && this))
                  {
                     this.§97§.graphics.lineTo(param1[0].x * this.§`!J§,param1[0].y * this.§`!J§);
                     do
                     {
                        this.§97§.graphics.endFill();
                     }
                     while(_loc6_ && param1);
                     
                     if(_loc5_)
                     {
                        return;
                     }
                  }
               }
               else
               {
                  this.§97§.graphics.lineTo(param1[_loc4_].x * this.§`!J§,param1[_loc4_].y * this.§`!J§);
                  while(true)
                  {
                     _loc4_++;
                  }
                  addr172:
               }
               while(_loc6_)
               {
                  §§goto(addr172);
               }
            }
         }
      }
      
      public function §%!c§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§97§.graphics.lineStyle(this.§5!T§,param3.color,this.§@!7§);
         }
         do
         {
            this.§97§.graphics.drawCircle(param1.x * this.§`!J§,param1.y * this.§`!J§,param2 * this.§`!J§);
         }
         while(!_loc5_);
         
      }
      
      public function §+"2§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§97§.graphics.lineStyle(this.§5!T§,param4.color,this.§@!7§);
            while(true)
            {
               this.§97§.graphics.moveTo(0,0);
            }
            addr167:
         }
         loop1:
         while(true)
         {
            this.§97§.graphics.beginFill(param4.color,this.§!!$§);
            while(_loc6_)
            {
               this.§97§.graphics.drawCircle(param1.x * this.§`!J§,param1.y * this.§`!J§,param2 * this.§`!J§);
               loop3:
               while(true)
               {
                  this.§97§.graphics.endFill();
                  addr104:
                  while(!_loc5_)
                  {
                     this.§97§.graphics.moveTo(param1.x * this.§`!J§,param1.y * this.§`!J§);
                     continue loop3;
                  }
                  continue loop1;
               }
               if(_loc5_ && param2)
               {
                  continue;
               }
               §§goto(addr98);
            }
            §§goto(addr167);
         }
      }
      
      public function §[!d§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§97§.graphics.lineStyle(this.§5!T§,param3.color,this.§@!7§);
            while(true)
            {
               this.§97§.graphics.moveTo(param1.x * this.§`!J§,param1.y * this.§`!J§);
               loop1:
               while(!(_loc4_ && param3))
               {
                  while(true)
                  {
                     this.§97§.graphics.lineTo(param2.x * this.§`!J§,param2.y * this.§`!J§);
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §6y§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§97§.graphics.lineStyle(this.§5!T§,16711680,this.§@!7§);
            loop0:
            while(true)
            {
               this.§97§.graphics.moveTo(param1.position.x * this.§`!J§,param1.position.y * this.§`!J§);
               while(true)
               {
                  this.§97§.graphics.lineTo((param1.position.x + this.§@";§ * param1.R.col1.x) * this.§`!J§,(param1.position.y + this.§@";§ * param1.R.col1.y) * this.§`!J§);
                  while(_loc3_ || this)
                  {
                     this.§97§.graphics.lineStyle(this.§5!T§,65280,this.§@!7§);
                     while(_loc3_)
                     {
                        this.§97§.graphics.moveTo(param1.position.x * this.§`!J§,param1.position.y * this.§`!J§);
                        continue loop0;
                        if(!(_loc2_ && this))
                        {
                           return;
                           addr66:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
   }
}
