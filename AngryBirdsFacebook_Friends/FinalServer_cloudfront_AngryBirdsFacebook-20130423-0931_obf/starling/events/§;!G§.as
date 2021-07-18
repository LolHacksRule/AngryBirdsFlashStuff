package starling.events
{
   import §'!6§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;!G§
   {
      
      private static var §`+§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §`+§ = new Matrix();
         }
      }
      
      private var §-P§:int;
      
      private var §7%§:Number;
      
      private var §2!?§:Number;
      
      private var §]!>§:Number;
      
      private var §;!t§:Number;
      
      private var §2F§:int;
      
      private var §6!Z§:String;
      
      private var §1"'§:DisplayObject;
      
      private var §7!y§:Number;
      
      public function §;!G§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            if(_loc8_ || param1)
            {
               this.§-P§ = param1;
               if(_loc8_)
               {
                  this.§7%§ = this.§]!>§ = param2;
                  addr33:
                  if(!(_loc7_ && param3))
                  {
                     this.§2!?§ = this.§;!t§ = param3;
                     if(!_loc8_)
                     {
                     }
                     loop0:
                     while(true)
                     {
                        this.§1"'§ = param5;
                        if(_loc7_ && param2)
                        {
                           continue;
                        }
                        if(_loc8_ || param3)
                        {
                           break;
                        }
                        addr112:
                        while(true)
                        {
                           this.§6!Z§ = param4;
                           continue loop0;
                        }
                     }
                     return;
                     addr108:
                  }
                  this.§2F§ = 0;
                  §§goto(addr112);
               }
               §§goto(addr108);
            }
         }
         §§goto(addr33);
      }
      
      public function §""=§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§7%§,this.§2!?§);
         if(_loc3_ || this)
         {
            this.§1"'§.root.§'!D§(param1,§`+§);
         }
         return §`+§.transformPoint(_loc2_);
      }
      
      public function §>g§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§]!>§,this.§;!t§);
         if(_loc3_ || _loc2_)
         {
            this.§1"'§.root.§'!D§(param1,§`+§);
         }
         return §`+§.transformPoint(_loc2_);
      }
      
      public function clone() : §;!G§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§;!G§ = new §;!G§(this.§-P§,this.§7%§,this.§2!?§,this.§6!Z§,this.§1"'§);
         if(!_loc3_)
         {
            _loc1_.§]!>§ = this.§]!>§;
            while(true)
            {
               _loc1_.§;!t§ = this.§;!t§;
               addr78:
               if(_loc2_ || _loc3_)
               {
                  _loc1_.§7!y§ = this.§7!y§;
                  addr85:
                  if(!(_loc2_ || _loc1_))
                  {
                     while(!_loc3_)
                     {
                        §§goto(addr78);
                        §§goto(addr85);
                     }
                     while(true)
                     {
                        _loc1_.§2F§ = this.§2F§;
                        §§goto(addr76);
                     }
                     addr76:
                     addr91:
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr91);
      }
      
      public function get id() : int
      {
         return this.§-P§;
      }
      
      public function get globalX() : Number
      {
         return this.§7%§;
      }
      
      public function get globalY() : Number
      {
         return this.§2!?§;
      }
      
      public function get §@!A§() : Number
      {
         return this.§]!>§;
      }
      
      public function get §,!;§() : Number
      {
         return this.§;!t§;
      }
      
      public function get §]!<§() : int
      {
         return this.§2F§;
      }
      
      public function get phase() : String
      {
         return this.§6!Z§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§1"'§;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!y§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§]!>§ = this.§7%§;
            loop0:
            while(true)
            {
               this.§;!t§ = this.§2!?§;
               while(true)
               {
                  this.§7%§ = param1;
                  while(!(_loc3_ && _loc3_))
                  {
                     if(_loc4_)
                     {
                        this.§2!?§ = param2;
                        if(_loc4_)
                        {
                           return;
                           addr50:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      function §`!K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6!Z§ = param1;
         }
      }
      
      function §8"Y§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2F§ = param1;
         }
      }
      
      function §#O§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1"'§ = param1;
         }
      }
      
      function § !#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!y§ = param1;
         }
      }
   }
}
