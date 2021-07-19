package starling.events
{
   import §7!8§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §7M§
   {
      
      private static var §02§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §7M§))
         {
            §02§ = new Matrix();
         }
      }
      
      private var §?-§:int;
      
      private var § d§:Number;
      
      private var §8!"§:Number;
      
      private var §?"&§:Number;
      
      private var §8j§:Number;
      
      private var §1!1§:int;
      
      private var §7h§:String;
      
      private var §?!<§:DisplayObject;
      
      private var §%!I§:Number;
      
      public function §7M§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            if(_loc7_)
            {
               this.§?-§ = param1;
               if(!(_loc8_ && param2))
               {
                  addr32:
                  this.§ d§ = this.§?"&§ = param2;
                  if(_loc7_)
                  {
                     this.§8!"§ = this.§8j§ = param3;
                     if(!(_loc8_ && param3))
                     {
                        this.§1!1§ = 0;
                        addr106:
                        loop2:
                        while(true)
                        {
                           this.§7h§ = param4;
                           addr85:
                           while(_loc8_ && param2)
                           {
                              continue loop2;
                           }
                        }
                        addr106:
                     }
                  }
                  §§goto(addr106);
               }
               while(true)
               {
                  this.§?!<§ = param5;
                  if(_loc7_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
            }
            §§goto(addr32);
         }
         §§goto(addr106);
      }
      
      public function §`o§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§ d§,this.§8!"§);
         if(!_loc4_)
         {
            this.§?!<§.root.§]!U§(param1,§02§);
         }
         return §02§.transformPoint(_loc2_);
      }
      
      public function §]!1§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§?"&§,this.§8j§);
         if(_loc4_)
         {
            this.§?!<§.root.§]!U§(param1,§02§);
         }
         return §02§.transformPoint(_loc2_);
      }
      
      public function clone() : §7M§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7M§ = new §7M§(this.§?-§,this.§ d§,this.§8!"§,this.§7h§,this.§?!<§);
         if(!(_loc2_ && this))
         {
            _loc1_.§?"&§ = this.§?"&§;
            while(true)
            {
               _loc1_.§8j§ = this.§8j§;
               loop1:
               while(_loc3_ || this)
               {
                  _loc1_.§1!1§ = this.§1!1§;
                  while(true)
                  {
                     _loc1_.§%!I§ = this.§%!I§;
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_ || _loc1_)
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
         §§goto(addr79);
      }
      
      public function get id() : int
      {
         return this.§?-§;
      }
      
      public function get globalX() : Number
      {
         return this.§ d§;
      }
      
      public function get globalY() : Number
      {
         return this.§8!"§;
      }
      
      public function get §7!+§() : Number
      {
         return this.§?"&§;
      }
      
      public function get §]! §() : Number
      {
         return this.§8j§;
      }
      
      public function get §@"G§() : int
      {
         return this.§1!1§;
      }
      
      public function get phase() : String
      {
         return this.§7h§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§?!<§;
      }
      
      public function get timestamp() : Number
      {
         return this.§%!I§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§?"&§ = this.§ d§;
            while(true)
            {
               this.§8j§ = this.§8!"§;
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            this.§ d§ = param1;
            do
            {
               this.§8!"§ = param2;
            }
            while(_loc3_);
            
            if(!(_loc3_ && this))
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      function §3"$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7h§ = param1;
         }
      }
      
      function §'f§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!1§ = param1;
         }
      }
      
      function §%i§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!<§ = param1;
         }
      }
      
      function §2!m§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§%!I§ = param1;
         }
      }
   }
}
