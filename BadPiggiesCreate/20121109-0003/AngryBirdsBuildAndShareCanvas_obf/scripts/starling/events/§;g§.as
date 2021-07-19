package starling.events
{
   import §+!-§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;g§
   {
      
      private static var §^L§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §^L§ = new Matrix();
         }
      }
      
      private var §2!?§:int;
      
      private var §8!q§:Number;
      
      private var § P§:Number;
      
      private var §-!o§:Number;
      
      private var §,"5§:Number;
      
      private var §]A§:int;
      
      private var §=?§:String;
      
      private var §&d§:DisplayObject;
      
      private var §8^§:Number;
      
      public function §;g§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            if(!(_loc8_ && param2))
            {
               this.§2!?§ = param1;
               if(_loc7_ || param1)
               {
                  this.§8!q§ = this.§-!o§ = param2;
                  §§goto(addr37);
               }
               §§goto(addr79);
            }
            addr37:
            if(_loc7_ || this)
            {
               addr63:
               this.§ P§ = this.§,"5§ = param3;
               if(_loc7_ || param2)
               {
                  this.§]A§ = 0;
                  while(true)
                  {
                     this.§=?§ = param4;
                     §§goto(addr105);
                  }
                  addr79:
               }
               while(true)
               {
                  this.§&d§ = param5;
                  if(!_loc7_)
                  {
                     addr105:
                     §§goto(addr90);
                  }
               }
            }
            addr90:
            while(true)
            {
               if(!_loc8_)
               {
                  continue;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §%g§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§8!q§,this.§ P§);
         if(!_loc3_)
         {
            this.§&d§.root.§1!%§(param1,§^L§);
         }
         return §^L§.transformPoint(_loc2_);
      }
      
      public function §'!g§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§-!o§,this.§,"5§);
         if(!(_loc3_ && this))
         {
            this.§&d§.root.§1!%§(param1,§^L§);
         }
         return §^L§.transformPoint(_loc2_);
      }
      
      public function clone() : §;g§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;g§ = new §;g§(this.§2!?§,this.§8!q§,this.§ P§,this.§=?§,this.§&d§);
         if(!(_loc2_ && this))
         {
            _loc1_.§-!o§ = this.§-!o§;
            while(true)
            {
               _loc1_.§,"5§ = this.§,"5§;
               loop1:
               while(_loc3_)
               {
                  _loc1_.§]A§ = this.§]A§;
                  while(true)
                  {
                     _loc1_.§8^§ = this.§8^§;
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get id() : int
      {
         return this.§2!?§;
      }
      
      public function get globalX() : Number
      {
         return this.§8!q§;
      }
      
      public function get globalY() : Number
      {
         return this.§ P§;
      }
      
      public function get §?!?§() : Number
      {
         return this.§-!o§;
      }
      
      public function get §2!G§() : Number
      {
         return this.§,"5§;
      }
      
      public function get §=w§() : int
      {
         return this.§]A§;
      }
      
      public function get phase() : String
      {
         return this.§=?§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&d§;
      }
      
      public function get timestamp() : Number
      {
         return this.§8^§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§-!o§ = this.§8!q§;
            while(true)
            {
               this.§,"5§ = this.§ P§;
               loop1:
               while(!(_loc4_ && param2))
               {
                  while(true)
                  {
                     this.§8!q§ = param1;
                     while(!_loc4_)
                     {
                        this.§ P§ = param2;
                        if(_loc3_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      function § Y§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§=?§ = param1;
         }
      }
      
      function §1!=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]A§ = param1;
         }
      }
      
      function § !!§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&d§ = param1;
         }
      }
      
      function §8!4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8^§ = param1;
         }
      }
   }
}
