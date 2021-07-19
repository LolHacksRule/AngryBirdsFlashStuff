package starling.events
{
   import §^a§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#v§
   {
      
      private static var §&!T§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&!T§ = new Matrix();
         }
      }
      
      private var §7!]§:int;
      
      private var §<1§:Number;
      
      private var §3c§:Number;
      
      private var §?Y§:Number;
      
      private var §>!e§:Number;
      
      private var §^v§:int;
      
      private var §7D§:String;
      
      private var §[!W§:DisplayObject;
      
      private var §%p§:Number;
      
      public function §#v§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            if(!(_loc7_ && param1))
            {
               this.§7!]§ = param1;
               if(!(_loc7_ && param2))
               {
                  this.§<1§ = this.§?Y§ = param2;
                  if(!(_loc7_ && param2))
                  {
                     addr64:
                     this.§3c§ = this.§>!e§ = param3;
                     if(_loc8_ || param3)
                     {
                        this.§^v§ = 0;
                        addr112:
                        loop2:
                        while(true)
                        {
                           this.§7D§ = param4;
                           addr106:
                           while(!_loc8_)
                           {
                              continue loop2;
                           }
                        }
                        addr112:
                     }
                  }
                  §§goto(addr112);
               }
               while(true)
               {
                  this.§[!W§ = param5;
                  if(_loc8_)
                  {
                     break;
                  }
                  §§goto(addr106);
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr112);
      }
      
      public function §&1§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§<1§,this.§3c§);
         if(!_loc3_)
         {
            this.§[!W§.root.§?z§(param1,§&!T§);
         }
         return §&!T§.transformPoint(_loc2_);
      }
      
      public function §@§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§?Y§,this.§>!e§);
         if(!(_loc4_ && _loc3_))
         {
            this.§[!W§.root.§?z§(param1,§&!T§);
         }
         return §&!T§.transformPoint(_loc2_);
      }
      
      public function clone() : §#v§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#v§ = new §#v§(this.§7!]§,this.§<1§,this.§3c§,this.§7D§,this.§[!W§);
         if(!_loc2_)
         {
            _loc1_.§?Y§ = this.§?Y§;
            while(true)
            {
               _loc1_.§>!e§ = this.§>!e§;
               while(!(_loc2_ && this))
               {
                  _loc1_.§^v§ = this.§^v§;
                  do
                  {
                     _loc1_.§%p§ = this.§%p§;
                  }
                  while(!_loc3_);
                  
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return _loc1_;
                  addr63:
               }
            }
         }
         §§goto(addr63);
      }
      
      public function get id() : int
      {
         return this.§7!]§;
      }
      
      public function get globalX() : Number
      {
         return this.§<1§;
      }
      
      public function get globalY() : Number
      {
         return this.§3c§;
      }
      
      public function get §0u§() : Number
      {
         return this.§?Y§;
      }
      
      public function get §9;§() : Number
      {
         return this.§>!e§;
      }
      
      public function get §=!i§() : int
      {
         return this.§^v§;
      }
      
      public function get phase() : String
      {
         return this.§7D§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§[!W§;
      }
      
      public function get timestamp() : Number
      {
         return this.§%p§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§?Y§ = this.§<1§;
            while(true)
            {
               this.§>!e§ = this.§3c§;
               while(!_loc4_)
               {
                  this.§<1§ = param1;
                  loop2:
                  while(!(_loc4_ && this))
                  {
                     while(true)
                     {
                        this.§3c§ = param2;
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      function §"4§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7D§ = param1;
         }
      }
      
      function §5!1§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^v§ = param1;
         }
      }
      
      function §4!E§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!W§ = param1;
         }
      }
      
      function §?!7§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%p§ = param1;
         }
      }
   }
}
