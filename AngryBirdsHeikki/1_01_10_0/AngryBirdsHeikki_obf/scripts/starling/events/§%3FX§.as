package starling.events
{
   import §2Y§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §?X§
   {
      
      private static var §6!<§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6!<§ = new Matrix();
         }
      }
      
      private var §0!V§:int;
      
      private var §,k§:Number;
      
      private var §%!R§:Number;
      
      private var §@A§:Number;
      
      private var §7!'§:Number;
      
      private var §@2§:int;
      
      private var § t§:String;
      
      private var §'Q§:DisplayObject;
      
      private var §8Z§:Number;
      
      public function §?X§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            super();
            if(!_loc7_)
            {
               this.§0!V§ = param1;
               if(!(_loc7_ && param3))
               {
                  this.§,k§ = this.§@A§ = param2;
                  if(!(_loc7_ && param1))
                  {
                     addr64:
                     this.§%!R§ = this.§7!'§ = param3;
                     if(_loc7_)
                     {
                     }
                     return;
                     addr91:
                  }
                  this.§@2§ = 0;
                  while(true)
                  {
                     this.§ t§ = param4;
                     loop1:
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           this.§'Q§ = param5;
                           if(!(_loc7_ && this))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        §§goto(addr91);
                     }
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr91);
         }
         §§goto(addr64);
      }
      
      public function §=!A§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§,k§,this.§%!R§);
         if(_loc4_ || this)
         {
            this.§'Q§.root.§6!5§(param1,§6!<§);
         }
         return §6!<§.transformPoint(_loc2_);
      }
      
      public function §;Y§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§@A§,this.§7!'§);
         if(!(_loc3_ && this))
         {
            this.§'Q§.root.§6!5§(param1,§6!<§);
         }
         return §6!<§.transformPoint(_loc2_);
      }
      
      public function clone() : §?X§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?X§ = new §?X§(this.§0!V§,this.§,k§,this.§%!R§,this.§ t§,this.§'Q§);
         if(!_loc2_)
         {
            _loc1_.§@A§ = this.§@A§;
         }
         do
         {
            _loc1_.§7!'§ = this.§7!'§;
            do
            {
               _loc1_.§@2§ = this.§@2§;
               do
               {
                  _loc1_.§8Z§ = this.§8Z§;
               }
               while(!_loc3_);
               
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§0!V§;
      }
      
      public function get globalX() : Number
      {
         return this.§,k§;
      }
      
      public function get globalY() : Number
      {
         return this.§%!R§;
      }
      
      public function get §#9§() : Number
      {
         return this.§@A§;
      }
      
      public function get §]!J§() : Number
      {
         return this.§7!'§;
      }
      
      public function get §#X§() : int
      {
         return this.§@2§;
      }
      
      public function get phase() : String
      {
         return this.§ t§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§'Q§;
      }
      
      public function get timestamp() : Number
      {
         return this.§8Z§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§@A§ = this.§,k§;
            loop0:
            while(true)
            {
               this.§7!'§ = this.§%!R§;
               loop1:
               while(true)
               {
                  this.§,k§ = param1;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§%!R§ = param2;
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr54);
      }
      
      function §3!1§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§ t§ = param1;
         }
      }
      
      function §!!Y§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§@2§ = param1;
         }
      }
      
      function §&z§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§'Q§ = param1;
         }
      }
      
      function §^!C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8Z§ = param1;
         }
      }
   }
}
