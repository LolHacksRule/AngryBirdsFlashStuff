package starling.events
{
   import §6![§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4!#§
   {
      
      private static var §7=§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §7=§ = new Matrix();
         }
      }
      
      private var §]&§:int;
      
      private var §7t§:Number;
      
      private var §1W§:Number;
      
      private var §^!s§:Number;
      
      private var §#!i§:Number;
      
      private var §3!s§:int;
      
      private var §&_§:String;
      
      private var §9U§:DisplayObject;
      
      private var §!_§:Number;
      
      public function §4!#§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super();
            if(_loc7_ || param2)
            {
               this.§]&§ = param1;
               if(!_loc8_)
               {
                  this.§7t§ = this.§^!s§ = param2;
                  addr37:
                  if(!_loc8_)
                  {
                     addr58:
                     this.§1W§ = this.§#!i§ = param3;
                     if(_loc7_ || param1)
                     {
                        this.§3!s§ = 0;
                        addr106:
                        while(true)
                        {
                           this.§&_§ = param4;
                           loop1:
                           while(!_loc8_)
                           {
                              while(true)
                              {
                                 this.§9U§ = param5;
                                 if(!_loc8_)
                                 {
                                    return;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr106:
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr102);
               }
               §§goto(addr106);
            }
            §§goto(addr37);
         }
         §§goto(addr58);
      }
      
      public function §?"&§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§7t§,this.§1W§);
         if(!(_loc3_ && _loc2_))
         {
            this.§9U§.root.§3!+§(param1,§7=§);
         }
         return §7=§.transformPoint(_loc2_);
      }
      
      public function §@!q§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§^!s§,this.§#!i§);
         if(!(_loc3_ && this))
         {
            this.§9U§.root.§3!+§(param1,§7=§);
         }
         return §7=§.transformPoint(_loc2_);
      }
      
      public function clone() : §4!#§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§4!#§ = new §4!#§(this.§]&§,this.§7t§,this.§1W§,this.§&_§,this.§9U§);
         if(_loc3_ || _loc3_)
         {
            _loc1_.§^!s§ = this.§^!s§;
            loop0:
            while(true)
            {
               _loc1_.§#!i§ = this.§#!i§;
               while(true)
               {
                  _loc1_.§3!s§ = this.§3!s§;
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        _loc1_.§!_§ = this.§!_§;
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function get id() : int
      {
         return this.§]&§;
      }
      
      public function get globalX() : Number
      {
         return this.§7t§;
      }
      
      public function get globalY() : Number
      {
         return this.§1W§;
      }
      
      public function get §&!A§() : Number
      {
         return this.§^!s§;
      }
      
      public function get §"@§() : Number
      {
         return this.§#!i§;
      }
      
      public function get §7!L§() : int
      {
         return this.§3!s§;
      }
      
      public function get phase() : String
      {
         return this.§&_§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§9U§;
      }
      
      public function get timestamp() : Number
      {
         return this.§!_§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§^!s§ = this.§7t§;
            while(true)
            {
               this.§#!i§ = this.§1W§;
               while(!_loc4_)
               {
                  this.§7t§ = param1;
                  while(_loc3_)
                  {
                     this.§1W§ = param2;
                     if(!(_loc4_ && _loc3_))
                     {
                        return;
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      function §=9§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§&_§ = param1;
         }
      }
      
      function §3!]§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3!s§ = param1;
         }
      }
      
      function §5",§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9U§ = param1;
         }
      }
      
      function § Z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!_§ = param1;
         }
      }
   }
}
