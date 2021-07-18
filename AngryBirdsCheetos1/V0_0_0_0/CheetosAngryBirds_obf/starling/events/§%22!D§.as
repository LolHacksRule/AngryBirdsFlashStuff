package starling.events
{
   import §`a§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §"!D§
   {
      
      private static var §,!?§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!?§ = new Matrix();
         }
      }
      
      private var §="§:int;
      
      private var §3d§:Number;
      
      private var §[s§:Number;
      
      private var §@!R§:Number;
      
      private var §=!8§:Number;
      
      private var §1l§:int;
      
      private var §,X§:String;
      
      private var §5!F§:DisplayObject;
      
      private var §'X§:Number;
      
      public function §"!D§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            if(_loc8_)
            {
               this.§="§ = param1;
               if(!_loc7_)
               {
                  this.§3d§ = this.§@!R§ = param2;
                  if(!(_loc7_ && param2))
                  {
                     addr54:
                     this.§[s§ = this.§=!8§ = param3;
                     if(!_loc7_)
                     {
                        this.§1l§ = 0;
                        addr65:
                     }
                  }
                  §§goto(addr65);
               }
               do
               {
                  this.§,X§ = param4;
                  do
                  {
                     this.§5!F§ = param5;
                  }
                  while(!_loc8_);
                  
               }
               while(_loc7_);
               
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr54);
      }
      
      public function §^P§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§3d§,this.§[s§);
         if(!(_loc3_ && param1))
         {
            this.§5!F§.root.§`! §(param1,§,!?§);
         }
         return §,!?§.transformPoint(_loc2_);
      }
      
      public function §@!D§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§@!R§,this.§=!8§);
         if(!_loc4_)
         {
            this.§5!F§.root.§`! §(param1,§,!?§);
         }
         return §,!?§.transformPoint(_loc2_);
      }
      
      public function clone() : §"!D§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§"!D§ = new §"!D§(this.§="§,this.§3d§,this.§[s§,this.§,X§,this.§5!F§);
         if(!_loc3_)
         {
            _loc1_.§@!R§ = this.§@!R§;
         }
         loop0:
         do
         {
            _loc1_.§=!8§ = this.§=!8§;
            while(true)
            {
               _loc1_.§1l§ = this.§1l§;
               while(_loc2_)
               {
                  _loc1_.§'X§ = this.§'X§;
                  if(_loc2_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc2_ || _loc2_));
         
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§="§;
      }
      
      public function get globalX() : Number
      {
         return this.§3d§;
      }
      
      public function get globalY() : Number
      {
         return this.§[s§;
      }
      
      public function get §%N§() : Number
      {
         return this.§@!R§;
      }
      
      public function get §6!Q§() : Number
      {
         return this.§=!8§;
      }
      
      public function get §+!%§() : int
      {
         return this.§1l§;
      }
      
      public function get phase() : String
      {
         return this.§,X§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§5!F§;
      }
      
      public function get timestamp() : Number
      {
         return this.§'X§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§@!R§ = this.§3d§;
         }
         while(true)
         {
            this.§=!8§ = this.§[s§;
            while(!_loc4_)
            {
               this.§3d§ = param1;
               while(_loc3_ || this)
               {
                  this.§[s§ = param2;
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      function §9m§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§,X§ = param1;
         }
      }
      
      function §;!M§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§1l§ = param1;
         }
      }
      
      function §%!;§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5!F§ = param1;
         }
      }
      
      function §9]§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§'X§ = param1;
         }
      }
   }
}
