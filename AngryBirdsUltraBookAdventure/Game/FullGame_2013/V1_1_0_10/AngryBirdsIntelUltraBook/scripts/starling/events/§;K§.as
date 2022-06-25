package starling.events
{
   import §`g§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;K§
   {
      
      private static var §=!l§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §;K§)
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
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            if(_loc7_ || param1)
            {
               this.§[!5§ = param1;
               if(!_loc8_)
               {
                  this.§=!4§ = this.§"5§ = param2;
                  if(_loc7_ || this)
                  {
                     this.§#!y§ = this.§&$§ = param3;
                     if(!(_loc8_ && this))
                     {
                        this.§ case§ = 0;
                        loop0:
                        while(true)
                        {
                           this.§7C§ = param4;
                           addr107:
                           while(true)
                           {
                              this.§+F§ = param5;
                              if(!(_loc8_ && this))
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr102);
                        }
                        addr84:
                     }
                     addr102:
                     return;
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr84);
         }
         §§goto(addr107);
      }
      
      public function §<!$§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§=!4§,this.§#!y§);
         if(_loc3_)
         {
            this.§+F§.root.§,!g§(param1,§=!l§);
         }
         return §=!l§.transformPoint(_loc2_);
      }
      
      public function §;!B§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§"5§,this.§&$§);
         if(!(_loc4_ && param1))
         {
            this.§+F§.root.§,!g§(param1,§=!l§);
         }
         return §=!l§.transformPoint(_loc2_);
      }
      
      public function clone() : §;K§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§;K§ = new §;K§(this.§[!5§,this.§=!4§,this.§#!y§,this.§7C§,this.§+F§);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.§"5§ = this.§"5§;
            while(true)
            {
               _loc1_.§&$§ = this.§&$§;
               while(!_loc3_)
               {
                  _loc1_.§ case§ = this.§ case§;
                  while(_loc2_ || this)
                  {
                     _loc1_.§>]§ = this.§>]§;
                     if(_loc2_)
                     {
                        return _loc1_;
                        addr70:
                     }
                  }
               }
            }
         }
         §§goto(addr70);
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§"5§ = this.§=!4§;
         }
         while(true)
         {
            this.§&$§ = this.§#!y§;
            while(!(_loc4_ && param2))
            {
               this.§=!4§ = param1;
               while(_loc3_ || param2)
               {
                  this.§#!y§ = param2;
                  if(_loc3_ || this)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      function §6!=§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§7C§ = param1;
         }
      }
      
      function §<S§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ case§ = param1;
         }
      }
      
      function §<!1§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+F§ = param1;
         }
      }
      
      function §5g§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>]§ = param1;
         }
      }
   }
}
