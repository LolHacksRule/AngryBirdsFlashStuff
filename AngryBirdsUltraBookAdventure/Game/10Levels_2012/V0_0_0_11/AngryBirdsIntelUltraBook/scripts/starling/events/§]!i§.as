package starling.events
{
   import §6!7§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §]!i§
   {
      
      private static var §18§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §18§ = new Matrix();
         }
      }
      
      private var §-!G§:int;
      
      private var §"a§:Number;
      
      private var §-P§:Number;
      
      private var §,!`§:Number;
      
      private var §^>§:Number;
      
      private var §3m§:int;
      
      private var §&2§:String;
      
      private var §#!+§:DisplayObject;
      
      private var §-7§:Number;
      
      public function §]!i§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            if(_loc8_ || param3)
            {
               this.§-!G§ = param1;
               if(_loc8_ || param2)
               {
                  this.§"a§ = this.§,!`§ = param2;
                  addr38:
                  if(_loc8_)
                  {
                     this.§-P§ = this.§^>§ = param3;
                     if(!(_loc7_ && param1))
                     {
                        this.§3m§ = 0;
                        while(true)
                        {
                           this.§&2§ = param4;
                           while(!(_loc7_ && param3))
                           {
                              this.§#!+§ = param5;
                              if(_loc7_)
                              {
                                 continue;
                              }
                              return;
                              addr96:
                           }
                        }
                        addr112:
                        addr85:
                     }
                     §§goto(addr96);
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr85);
         }
         §§goto(addr38);
      }
      
      public function §='§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§"a§,this.§-P§);
         if(_loc3_ || param1)
         {
            this.§#!+§.root.§[!4§(param1,§18§);
         }
         return §18§.transformPoint(_loc2_);
      }
      
      public function §<!a§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§,!`§,this.§^>§);
         if(_loc4_)
         {
            this.§#!+§.root.§[!4§(param1,§18§);
         }
         return §18§.transformPoint(_loc2_);
      }
      
      public function clone() : §]!i§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§]!i§ = new §]!i§(this.§-!G§,this.§"a§,this.§-P§,this.§&2§,this.§#!+§);
         if(!_loc3_)
         {
            _loc1_.§,!`§ = this.§,!`§;
         }
         do
         {
            _loc1_.§^>§ = this.§^>§;
            do
            {
               _loc1_.§3m§ = this.§3m§;
               do
               {
                  _loc1_.§-7§ = this.§-7§;
               }
               while(_loc3_);
               
            }
            while(_loc3_);
            
         }
         while(_loc3_ && _loc2_);
         
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§-!G§;
      }
      
      public function get globalX() : Number
      {
         return this.§"a§;
      }
      
      public function get globalY() : Number
      {
         return this.§-P§;
      }
      
      public function get §1a§() : Number
      {
         return this.§,!`§;
      }
      
      public function get §<!P§() : Number
      {
         return this.§^>§;
      }
      
      public function get §else §() : int
      {
         return this.§3m§;
      }
      
      public function get phase() : String
      {
         return this.§&2§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§#!+§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-7§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§,!`§ = this.§"a§;
         }
         while(true)
         {
            this.§^>§ = this.§-P§;
            while(!_loc4_)
            {
               this.§"a§ = param1;
               while(!_loc4_)
               {
                  this.§-P§ = param2;
                  if(!_loc4_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      function §`!"§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&2§ = param1;
         }
      }
      
      function §;!i§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§3m§ = param1;
         }
      }
      
      function §,!g§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#!+§ = param1;
         }
      }
      
      function §7Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-7§ = param1;
         }
      }
   }
}
