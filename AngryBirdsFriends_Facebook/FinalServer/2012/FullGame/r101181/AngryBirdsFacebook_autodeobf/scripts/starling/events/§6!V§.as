package starling.events
{
   import §1!$§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6!V§
   {
      
      private static var §@V§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §6!V§))
         {
            §@V§ = new Matrix();
         }
      }
      
      private var §];§:int;
      
      private var §8!s§:Number;
      
      private var §;"5§:Number;
      
      private var §]! §:Number;
      
      private var §?!j§:Number;
      
      private var §5L§:int;
      
      private var §?!7§:String;
      
      private var § !8§:DisplayObject;
      
      private var §=!o§:Number;
      
      public function §6!V§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            if(_loc7_)
            {
               this.§];§ = param1;
               if(!(_loc8_ && param1))
               {
                  this.§8!s§ = this.§]! § = param2;
                  if(_loc7_)
                  {
                     this.§;"5§ = this.§?!j§ = param3;
                     if(!(_loc8_ && this))
                     {
                        this.§5L§ = 0;
                        while(true)
                        {
                           this.§?!7§ = param4;
                           §§goto(addr102);
                        }
                     }
                  }
               }
            }
            addr102:
            §§goto(addr97);
         }
         addr97:
         while(true)
         {
            this.§ !8§ = param5;
            if(_loc7_ || param2)
            {
               if(!_loc8_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §=!r§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§8!s§,this.§;"5§);
         if(!(_loc4_ && _loc3_))
         {
            this.§ !8§.root.§&!e§(param1,§@V§);
         }
         return §@V§.transformPoint(_loc2_);
      }
      
      public function §["C§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§]! §,this.§?!j§);
         if(!(_loc4_ && this))
         {
            this.§ !8§.root.§&!e§(param1,§@V§);
         }
         return §@V§.transformPoint(_loc2_);
      }
      
      public function clone() : §6!V§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§6!V§ = new §6!V§(this.§];§,this.§8!s§,this.§;"5§,this.§?!7§,this.§ !8§);
         if(_loc3_ || this)
         {
            _loc1_.§]! § = this.§]! §;
            while(true)
            {
               _loc1_.§?!j§ = this.§?!j§;
               while(true)
               {
                  _loc1_.§5L§ = this.§5L§;
                  §§goto(addr91);
               }
            }
         }
         addr91:
         while(true)
         {
            _loc1_.§=!o§ = this.§=!o§;
            if(!(_loc2_ && _loc1_))
            {
               if(_loc3_ || this)
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
         return this.§];§;
      }
      
      public function get globalX() : Number
      {
         return this.§8!s§;
      }
      
      public function get globalY() : Number
      {
         return this.§;"5§;
      }
      
      public function get §6h§() : Number
      {
         return this.§]! §;
      }
      
      public function get §"a§() : Number
      {
         return this.§?!j§;
      }
      
      public function get §!P§() : int
      {
         return this.§5L§;
      }
      
      public function get phase() : String
      {
         return this.§?!7§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§ !8§;
      }
      
      public function get timestamp() : Number
      {
         return this.§=!o§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§]! § = this.§8!s§;
            loop0:
            while(true)
            {
               this.§?!j§ = this.§;"5§;
               while(true)
               {
                  this.§8!s§ = param1;
                  loop2:
                  while(!(_loc4_ && _loc3_))
                  {
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           this.§;"5§ = param2;
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      function §>!I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!7§ = param1;
         }
      }
      
      function §>;§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§5L§ = param1;
         }
      }
      
      function §;"#§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !8§ = param1;
         }
      }
      
      function §'Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§=!o§ = param1;
         }
      }
   }
}
