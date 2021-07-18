package §0"!§
{
   import §'!_§.b2Color;
   import §'!_§.b2internal;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §5!j§:uint = 1;
      
      public static var §7!8§:uint = 2;
      
      public static var §;"-§:uint = 4;
      
      public static var §9§:uint = 8;
      
      public static var §&!C§:uint = 16;
      
      public static var §6o§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!j§ = 1;
            loop0:
            while(true)
            {
               §7!8§ = 2;
               while(true)
               {
                  §;"-§ = 4;
                  while(_loc2_ || _loc2_)
                  {
                     §&!C§ = 16;
                     loop4:
                     while(_loc2_)
                     {
                        continue loop0;
                        §6o§ = 32;
                        if(!_loc1_)
                        {
                           addr30:
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 §9§ = 8;
                                 break loop4;
                                 §§goto(addr30);
                              }
                              addr83:
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private var §^b§:uint;
      
      b2internal var §@! §:Sprite;
      
      private var §]!C§:Number = 1.0;
      
      private var §@!<§:Number = 1.0;
      
      private var §5J§:Number = 1.0;
      
      private var §&?§:Number = 1.0;
      
      private var §!J§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§^b§ = 0;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §throw§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^b§ = param1;
         }
      }
      
      public function §`!?§() : uint
      {
         return this.§^b§;
      }
      
      public function §>K§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^b§ |= param1;
         }
      }
      
      public function §4!]§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^b§ &= ~param1;
         }
      }
      
      public function § "5§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@! § = param1;
         }
      }
      
      public function §<Z§() : Sprite
      {
         return this.§@! §;
      }
      
      public function §#"§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]!C§ = param1;
         }
      }
      
      public function §3Z§() : Number
      {
         return this.§]!C§;
      }
      
      public function §0!s§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§@!<§ = param1;
         }
      }
      
      public function §-"6§() : Number
      {
         return this.§@!<§;
      }
      
      public function §4"§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§5J§ = param1;
         }
      }
      
      public function §""!§() : Number
      {
         return this.§5J§;
      }
      
      public function §;!_§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&?§ = param1;
         }
      }
      
      public function §+!Q§() : Number
      {
         return this.§&?§;
      }
      
      public function §'!w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!J§ = param1;
         }
      }
      
      public function §#o§() : Number
      {
         return this.§!J§;
      }
      
      public function §&!,§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§@! §.graphics.lineStyle(this.§@!<§,param3.color,this.§5J§);
            if(_loc6_ || param3)
            {
               this.§@! §.graphics.moveTo(param1[0].x * this.§]!C§,param1[0].y * this.§]!C§);
            }
         }
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(_loc6_ || param3)
               {
                  if(!(_loc6_ || param3))
                  {
                     continue;
                  }
                  if(_loc6_ || param1)
                  {
                     this.§@! §.graphics.lineTo(param1[0].x * this.§]!C§,param1[0].y * this.§]!C§);
                     break;
                  }
                  _loc4_++;
                  continue;
                  addr153:
               }
               break;
            }
            this.§@! §.graphics.lineTo(param1[_loc4_].x * this.§]!C§,param1[_loc4_].y * this.§]!C§);
            §§goto(addr153);
         }
      }
      
      public function §,X§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§@! §.graphics.lineStyle(this.§@!<§,param3.color,this.§5J§);
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§@! §.graphics.moveTo(param1[0].x * this.§]!C§,param1[0].y * this.§]!C§);
                  do
                  {
                     this.§@! §.graphics.beginFill(param3.color,this.§&?§);
                  }
                  while(_loc6_);
                  
                  if(_loc6_ && param3)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc4_:int = 1;
                  while(true)
                  {
                     if(_loc4_ >= param2)
                     {
                        if(_loc5_)
                        {
                           this.§@! §.graphics.lineTo(param1[0].x * this.§]!C§,param1[0].y * this.§]!C§);
                        }
                        for(; _loc5_; this.§@! §.graphics.endFill(),if(_loc5_ || param2)
                        {
                           return;
                        })
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        continue;
                     }
                     this.§@! §.graphics.lineTo(param1[_loc4_].x * this.§]!C§,param1[_loc4_].y * this.§]!C§);
                     _loc4_++;
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function §5!"§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§@! §.graphics.lineStyle(this.§@!<§,param3.color,this.§5J§);
         }
         do
         {
            this.§@! §.graphics.drawCircle(param1.x * this.§]!C§,param1.y * this.§]!C§,param2 * this.§]!C§);
         }
         while(!_loc4_);
         
      }
      
      public function §7H§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§@! §.graphics.lineStyle(this.§@!<§,param4.color,this.§5J§);
            while(true)
            {
               this.§@! §.graphics.moveTo(0,0);
               while(true)
               {
                  this.§@! §.graphics.beginFill(param4.color,this.§&?§);
                  loop2:
                  while(true)
                  {
                     this.§@! §.graphics.drawCircle(param1.x * this.§]!C§,param1.y * this.§]!C§,param2 * this.§]!C§);
                     do
                     {
                        this.§@! §.graphics.endFill();
                        continue loop2;
                     }
                     while(!(_loc5_ || param3));
                     
                  }
               }
            }
         }
      }
      
      public function §9!U§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§@! §.graphics.lineStyle(this.§@!<§,param3.color,this.§5J§);
            do
            {
               this.§@! §.graphics.moveTo(param1.x * this.§]!C§,param1.y * this.§]!C§);
               do
               {
                  this.§@! §.graphics.lineTo(param2.x * this.§]!C§,param2.y * this.§]!C§);
               }
               while(_loc5_);
               
            }
            while(!_loc4_);
            
         }
      }
      
      public function §^c§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@! §.graphics.lineStyle(this.§@!<§,16711680,this.§5J§);
            loop0:
            while(true)
            {
               this.§@! §.graphics.moveTo(param1.position.x * this.§]!C§,param1.position.y * this.§]!C§);
               loop1:
               while(true)
               {
                  this.§@! §.graphics.lineTo((param1.position.x + this.§!J§ * param1.R.col1.x) * this.§]!C§,(param1.position.y + this.§!J§ * param1.R.col1.y) * this.§]!C§);
                  while(true)
                  {
                     this.§@! §.graphics.lineStyle(this.§@!<§,65280,this.§5J§);
                     while(_loc2_ || param1)
                     {
                        this.§@! §.graphics.moveTo(param1.position.x * this.§]!C§,param1.position.y * this.§]!C§);
                        loop4:
                        while(!_loc3_)
                        {
                           continue loop0;
                           while(true)
                           {
                              this.§@! §.graphics.lineTo((param1.position.x + this.§!J§ * param1.R.col2.x) * this.§]!C§,(param1.position.y + this.§!J§ * param1.R.col2.y) * this.§]!C§);
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
   }
}
