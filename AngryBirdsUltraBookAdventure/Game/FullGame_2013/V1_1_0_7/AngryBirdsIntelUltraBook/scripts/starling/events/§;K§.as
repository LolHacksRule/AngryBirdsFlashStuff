package starling.events
{
   import §`g§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;K§
   {
      
      private static var §=!l§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=!l§ = new Matrix();
         }
      }
      
      private var §[!5§:int;
      
      private var §=!4§:Number;
      
      private var §#!y§:Number;
      
      private var §"5§:Number;
      
      private var §&$§:Number;
      
      private var § case§:int;
      
      private var §7C§:String;
      
      private var §+F§:DisplayObject;
      
      private var §>]§:Number;
      
      public function §;K§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            if(!_loc7_)
            {
               this.§[!5§ = param1;
               if(_loc8_ || param1)
               {
                  this.§=!4§ = this.§"5§ = param2;
                  if(_loc8_ || param3)
                  {
                     this.§#!y§ = this.§&$§ = param3;
                     addr59:
                     if(_loc8_ || param1)
                     {
                        this.§ case§ = 0;
                        addr107:
                        do
                        {
                           this.§7C§ = param4;
                           do
                           {
                              this.§+F§ = param5;
                           }
                           while(!_loc8_);
                           
                        }
                        while(!_loc8_);
                        
                        addr107:
                     }
                     §§goto(addr107);
                  }
               }
               return;
            }
            §§goto(addr107);
         }
         §§goto(addr59);
      }
      
      public function §<!$§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§=!4§,this.§#!y§);
         if(!_loc3_)
         {
            this.§+F§.root.§,!g§(param1,§=!l§);
         }
         return §=!l§.transformPoint(_loc2_);
      }
      
      public function §;!B§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§"5§,this.§&$§);
         if(!_loc3_)
         {
            this.§+F§.root.§,!g§(param1,§=!l§);
         }
         return §=!l§.transformPoint(_loc2_);
      }
      
      public function clone() : §;K§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;K§ = new §;K§(this.§[!5§,this.§=!4§,this.§#!y§,this.§7C§,this.§+F§);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§"5§ = this.§"5§;
            while(true)
            {
               _loc1_.§&$§ = this.§&$§;
               while(true)
               {
                  _loc1_.§ case§ = this.§ case§;
                  §§goto(addr86);
               }
            }
         }
         addr86:
         while(true)
         {
            _loc1_.§>]§ = this.§>]§;
            if(!_loc2_)
            {
               if(!(_loc2_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§[!5§;
      }
      
      public function get globalX() : Number
      {
         return this.§=!4§;
      }
      
      public function get globalY() : Number
      {
         return this.§#!y§;
      }
      
      public function get §'!a§() : Number
      {
         return this.§"5§;
      }
      
      public function get § B§() : Number
      {
         return this.§&$§;
      }
      
      public function get §9!7§() : int
      {
         return this.§ case§;
      }
      
      public function get phase() : String
      {
         return this.§7C§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§+F§;
      }
      
      public function get timestamp() : Number
      {
         return this.§>]§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§"5§ = this.§=!4§;
            loop0:
            while(true)
            {
               this.§&$§ = this.§#!y§;
               while(true)
               {
                  this.§=!4§ = param1;
                  loop2:
                  while(_loc4_ || this)
                  {
                     while(true)
                     {
                        this.§#!y§ = param2;
                        if(!(_loc3_ && param2))
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      function §6!=§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§7C§ = param1;
         }
      }
      
      function §<S§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§ case§ = param1;
         }
      }
      
      function §<!1§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+F§ = param1;
         }
      }
      
      function §5g§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>]§ = param1;
         }
      }
   }
}
