package starling.events
{
   import §9E§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<Q§
   {
      
      private static var §1=§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §1=§ = new Matrix();
         }
      }
      
      private var § [§:int;
      
      private var § !'§:Number;
      
      private var §;q§:Number;
      
      private var §%!R§:Number;
      
      private var §4!j§:Number;
      
      private var §1D§:int;
      
      private var §<!C§:String;
      
      private var §,t§:DisplayObject;
      
      private var §3!k§:Number;
      
      public function §<Q§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            if(_loc7_)
            {
               §§goto(addr22);
            }
            §§goto(addr32);
         }
         addr22:
         this.§ [§ = param1;
         if(_loc7_ || param2)
         {
            this.§ !'§ = this.§%!R§ = param2;
            addr32:
            if(!_loc8_)
            {
               §§goto(addr53);
            }
            §§goto(addr106);
         }
         addr53:
         this.§;q§ = this.§4!j§ = param3;
         if(!(_loc8_ && this))
         {
            this.§1D§ = 0;
            while(true)
            {
               this.§<!C§ = param4;
            }
            addr106:
         }
         do
         {
            this.§,t§ = param5;
            if(_loc8_)
            {
               continue;
            }
         }
         while(!(_loc7_ || param2));
         
      }
      
      public function §0F§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§ !'§,this.§;q§);
         if(_loc4_ || _loc2_)
         {
            this.§,t§.root.§@P§(param1,§1=§);
         }
         return §1=§.transformPoint(_loc2_);
      }
      
      public function §&L§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§%!R§,this.§4!j§);
         if(!(_loc3_ && this))
         {
            this.§,t§.root.§@P§(param1,§1=§);
         }
         return §1=§.transformPoint(_loc2_);
      }
      
      public function clone() : §<Q§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§<Q§ = new §<Q§(this.§ [§,this.§ !'§,this.§;q§,this.§<!C§,this.§,t§);
         if(!_loc2_)
         {
            _loc1_.§%!R§ = this.§%!R§;
            loop0:
            while(true)
            {
               _loc1_.§4!j§ = this.§4!j§;
               while(true)
               {
                  _loc1_.§1D§ = this.§1D§;
                  while(_loc3_ || _loc3_)
                  {
                     if(_loc3_)
                     {
                        _loc1_.§3!k§ = this.§3!k§;
                        if(!_loc2_)
                        {
                           return _loc1_;
                           addr66:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function get id() : int
      {
         return this.§ [§;
      }
      
      public function get globalX() : Number
      {
         return this.§ !'§;
      }
      
      public function get globalY() : Number
      {
         return this.§;q§;
      }
      
      public function get §^[§() : Number
      {
         return this.§%!R§;
      }
      
      public function get §7!'§() : Number
      {
         return this.§4!j§;
      }
      
      public function get §6n§() : int
      {
         return this.§1D§;
      }
      
      public function get phase() : String
      {
         return this.§<!C§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§,t§;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!k§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§%!R§ = this.§ !'§;
            loop0:
            while(true)
            {
               this.§4!j§ = this.§;q§;
               while(true)
               {
                  this.§ !'§ = param1;
                  loop2:
                  while(!(_loc4_ && param2))
                  {
                     while(true)
                     {
                        this.§;q§ = param2;
                        if(_loc3_ || this)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      function §;B§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<!C§ = param1;
         }
      }
      
      function §7!n§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§1D§ = param1;
         }
      }
      
      function § 7§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§,t§ = param1;
         }
      }
      
      function §+!,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3!k§ = param1;
         }
      }
   }
}
