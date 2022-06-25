package starling.events
{
   import §#!,§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §]!B§
   {
      
      private static var §]!C§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]!C§ = new Matrix();
         }
      }
      
      private var §?t§:int;
      
      private var §6Y§:Number;
      
      private var §;§:Number;
      
      private var §'B§:Number;
      
      private var §5!,§:Number;
      
      private var § s§:int;
      
      private var §<!5§:String;
      
      private var §7@§:DisplayObject;
      
      private var §[i§:Number;
      
      public function §]!B§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            if(!_loc8_)
            {
               this.§?t§ = param1;
               if(_loc7_)
               {
                  this.§6Y§ = this.§'B§ = param2;
                  if(_loc7_ || param2)
                  {
                     this.§;§ = this.§5!,§ = param3;
                     if(!(_loc8_ && param2))
                     {
                        this.§ s§ = 0;
                     }
                     do
                     {
                        this.§7@§ = param5;
                        if(_loc8_)
                        {
                           continue;
                        }
                     }
                     while(!(_loc7_ || this));
                     
                     return;
                     addr102:
                     addr97:
                  }
                  while(true)
                  {
                     this.§<!5§ = param4;
                     §§goto(addr102);
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr102);
      }
      
      public function §9!&§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§6Y§,this.§;§);
         if(_loc4_)
         {
            this.§7@§.root.§@!7§(param1,§]!C§);
         }
         return §]!C§.transformPoint(_loc2_);
      }
      
      public function §%a§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§'B§,this.§5!,§);
         if(_loc3_ || _loc3_)
         {
            this.§7@§.root.§@!7§(param1,§]!C§);
         }
         return §]!C§.transformPoint(_loc2_);
      }
      
      public function clone() : §]!B§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§]!B§ = new §]!B§(this.§?t§,this.§6Y§,this.§;§,this.§<!5§,this.§7@§);
         if(_loc3_)
         {
            _loc1_.§'B§ = this.§'B§;
            while(true)
            {
               _loc1_.§5!,§ = this.§5!,§;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     _loc1_.§ s§ = this.§ s§;
                     do
                     {
                        _loc1_.§[i§ = this.§[i§;
                     }
                     while(!_loc3_);
                     
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr87);
      }
      
      public function get id() : int
      {
         return this.§?t§;
      }
      
      public function get globalX() : Number
      {
         return this.§6Y§;
      }
      
      public function get globalY() : Number
      {
         return this.§;§;
      }
      
      public function get §;`§() : Number
      {
         return this.§'B§;
      }
      
      public function get §#!i§() : Number
      {
         return this.§5!,§;
      }
      
      public function get §8!C§() : int
      {
         return this.§ s§;
      }
      
      public function get phase() : String
      {
         return this.§<!5§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§7@§;
      }
      
      public function get timestamp() : Number
      {
         return this.§[i§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§'B§ = this.§6Y§;
            while(true)
            {
               this.§5!,§ = this.§;§;
               while(true)
               {
                  this.§6Y§ = param1;
                  §§goto(addr74);
               }
            }
         }
         addr74:
         while(true)
         {
            this.§;§ = param2;
            if(!(_loc3_ && this))
            {
               if(!(_loc3_ && param1))
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr69:
      }
      
      function §9!$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§<!5§ = param1;
         }
      }
      
      function §!!f§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ s§ = param1;
         }
      }
      
      function §#s§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§7@§ = param1;
         }
      }
      
      function §0]§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[i§ = param1;
         }
      }
   }
}
