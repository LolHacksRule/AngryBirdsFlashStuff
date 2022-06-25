package starling.events
{
   import §1!&§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §1B§
   {
      
      private static var §4!g§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §4!g§ = new Matrix();
         }
      }
      
      private var §7m§:int;
      
      private var §5!g§:Number;
      
      private var §=9§:Number;
      
      private var §^!!§:Number;
      
      private var §5i§:Number;
      
      private var §,'§:int;
      
      private var §`'§:String;
      
      private var §`N§:DisplayObject;
      
      private var §const§:Number;
      
      public function §1B§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            if(_loc8_ || param3)
            {
               this.§7m§ = param1;
               if(_loc8_ || param2)
               {
                  this.§5!g§ = this.§^!!§ = param2;
                  addr38:
                  if(_loc8_)
                  {
                     this.§=9§ = this.§5i§ = param3;
                     if(!(_loc7_ && param1))
                     {
                        this.§,'§ = 0;
                        while(true)
                        {
                           this.§`'§ = param4;
                           while(!(_loc7_ && param3))
                           {
                              this.§`N§ = param5;
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
      
      public function §-![§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§5!g§,this.§=9§);
         if(_loc3_ || param1)
         {
            this.§`N§.root.§&!R§(param1,§4!g§);
         }
         return §4!g§.transformPoint(_loc2_);
      }
      
      public function §^1§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§^!!§,this.§5i§);
         if(_loc4_)
         {
            this.§`N§.root.§&!R§(param1,§4!g§);
         }
         return §4!g§.transformPoint(_loc2_);
      }
      
      public function clone() : §1B§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1B§ = new §1B§(this.§7m§,this.§5!g§,this.§=9§,this.§`'§,this.§`N§);
         if(!_loc3_)
         {
            _loc1_.§^!!§ = this.§^!!§;
         }
         do
         {
            _loc1_.§5i§ = this.§5i§;
            do
            {
               _loc1_.§,'§ = this.§,'§;
               do
               {
                  _loc1_.§const§ = this.§const§;
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
         return this.§7m§;
      }
      
      public function get globalX() : Number
      {
         return this.§5!g§;
      }
      
      public function get globalY() : Number
      {
         return this.§=9§;
      }
      
      public function get §#l§() : Number
      {
         return this.§^!!§;
      }
      
      public function get §6x§() : Number
      {
         return this.§5i§;
      }
      
      public function get §'!c§() : int
      {
         return this.§,'§;
      }
      
      public function get phase() : String
      {
         return this.§`'§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§`N§;
      }
      
      public function get timestamp() : Number
      {
         return this.§const§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§^!!§ = this.§5!g§;
         }
         while(true)
         {
            this.§5i§ = this.§=9§;
            while(!_loc4_)
            {
               this.§5!g§ = param1;
               while(!_loc4_)
               {
                  this.§=9§ = param2;
                  if(!_loc4_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      function § A§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`'§ = param1;
         }
      }
      
      function §9C§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§,'§ = param1;
         }
      }
      
      function §&z§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§`N§ = param1;
         }
      }
      
      function §>! §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§const§ = param1;
         }
      }
   }
}
