package starling.events
{
   import § N§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!g§
   {
      
      private static var §"!§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §!g§))
         {
            §"!§ = new Matrix();
         }
      }
      
      private var §=D§:int;
      
      private var §?C§:Number;
      
      private var §"8§:Number;
      
      private var §@-§:Number;
      
      private var §;`§:Number;
      
      private var §6n§:int;
      
      private var §2R§:String;
      
      private var §8S§:DisplayObject;
      
      private var §;!5§:Number;
      
      public function §!g§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         this.§=D§ = param1;
         if(_loc8_)
         {
            this.§?C§ = this.§@-§ = param2;
            if(!(_loc7_ && param1))
            {
               this.§"8§ = this.§;`§ = param3;
               §§goto(addr50);
            }
            §§goto(addr76);
         }
         addr50:
         if(!(_loc7_ && param2))
         {
            this.§6n§ = 0;
            this.§2R§ = param4;
            do
            {
               this.§8S§ = param5;
            }
            while(!_loc8_);
            
            addr76:
         }
      }
      
      public function §<!I§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§?C§,this.§"8§);
         if(_loc4_ || _loc3_)
         {
            this.§8S§.root.§>!B§(param1,§"!§);
         }
         return §"!§.transformPoint(_loc2_);
      }
      
      public function §4[§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§@-§,this.§;`§);
         if(!(_loc3_ && _loc2_))
         {
            this.§8S§.root.§>!B§(param1,§"!§);
         }
         return §"!§.transformPoint(_loc2_);
      }
      
      public function clone() : §!g§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§!g§ = new §!g§(this.§=D§,this.§?C§,this.§"8§,this.§2R§,this.§8S§);
         if(!_loc3_)
         {
            _loc1_.§@-§ = this.§@-§;
            while(true)
            {
               _loc1_.§;`§ = this.§;`§;
               while(true)
               {
                  _loc1_.§6n§ = this.§6n§;
                  §§goto(addr85);
               }
            }
         }
         addr85:
         while(true)
         {
            _loc1_.§;!5§ = this.§;!5§;
            if(_loc2_ || _loc2_)
            {
               if(_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr79:
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§=D§;
      }
      
      public function get globalX() : Number
      {
         return this.§?C§;
      }
      
      public function get globalY() : Number
      {
         return this.§"8§;
      }
      
      public function get §<!B§() : Number
      {
         return this.§@-§;
      }
      
      public function get §&c§() : Number
      {
         return this.§;`§;
      }
      
      public function get §4e§() : int
      {
         return this.§6n§;
      }
      
      public function get phase() : String
      {
         return this.§2R§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§8S§;
      }
      
      public function get timestamp() : Number
      {
         return this.§;!5§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§@-§ = this.§?C§;
            while(true)
            {
               this.§;`§ = this.§"8§;
               loop2:
               while(_loc4_ || this)
               {
                  this.§"8§ = param2;
                  if(_loc4_ || param2)
                  {
                     addr55:
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           this.§?C§ = param1;
                           continue loop2;
                           §§goto(addr55);
                        }
                        addr75:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      function §7b§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2R§ = param1;
         }
      }
      
      function §@k§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§6n§ = param1;
         }
      }
      
      function §9X§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8S§ = param1;
         }
      }
      
      function §0!A§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§;!5§ = param1;
         }
      }
   }
}
