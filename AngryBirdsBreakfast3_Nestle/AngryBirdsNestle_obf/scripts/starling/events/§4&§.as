package starling.events
{
   import §3!J§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4&§
   {
      
      private static var §-!B§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!B§ = new Matrix();
         }
      }
      
      private var §=D§:int;
      
      private var § J§:Number;
      
      private var §5w§:Number;
      
      private var § #§:Number;
      
      private var §<!`§:Number;
      
      private var §7!-§:int;
      
      private var §&I§:String;
      
      private var §!N§:DisplayObject;
      
      private var §3!&§:Number;
      
      public function §4&§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            if(_loc7_ || param1)
            {
               this.§=D§ = param1;
               if(_loc7_ || param2)
               {
                  this.§ J§ = this.§ #§ = param2;
                  if(_loc7_)
                  {
                     addr58:
                     this.§5w§ = this.§<!`§ = param3;
                     if(!(_loc8_ && this))
                     {
                        this.§7!-§ = 0;
                        addr74:
                     }
                     loop2:
                     while(true)
                     {
                        this.§&I§ = param4;
                        addr100:
                        while(!_loc7_)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§!N§ = param5;
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§goto(addr100);
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr58);
      }
      
      public function §1! §(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§ J§,this.§5w§);
         if(!(_loc4_ && _loc3_))
         {
            this.§!N§.root.§else §(param1,§-!B§);
         }
         return §-!B§.transformPoint(_loc2_);
      }
      
      public function §6!!§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§ #§,this.§<!`§);
         if(_loc3_ || this)
         {
            this.§!N§.root.§else §(param1,§-!B§);
         }
         return §-!B§.transformPoint(_loc2_);
      }
      
      public function clone() : §4&§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§4&§ = new §4&§(this.§=D§,this.§ J§,this.§5w§,this.§&I§,this.§!N§);
         if(!_loc3_)
         {
            _loc1_.§ #§ = this.§ #§;
            while(true)
            {
               _loc1_.§<!`§ = this.§<!`§;
               loop1:
               while(_loc2_)
               {
                  _loc1_.§7!-§ = this.§7!-§;
                  while(true)
                  {
                     _loc1_.§3!&§ = this.§3!&§;
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc2_ || _loc1_)
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
         §§goto(addr73);
      }
      
      public function get id() : int
      {
         return this.§=D§;
      }
      
      public function get globalX() : Number
      {
         return this.§ J§;
      }
      
      public function get globalY() : Number
      {
         return this.§5w§;
      }
      
      public function get §8!G§() : Number
      {
         return this.§ #§;
      }
      
      public function get §0!5§() : Number
      {
         return this.§<!`§;
      }
      
      public function get § >§() : int
      {
         return this.§7!-§;
      }
      
      public function get phase() : String
      {
         return this.§&I§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§!N§;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!&§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§ #§ = this.§ J§;
         }
         while(true)
         {
            this.§<!`§ = this.§5w§;
            while(_loc4_)
            {
               this.§ J§ = param1;
               while(_loc4_ || param1)
               {
                  this.§5w§ = param2;
                  if(_loc4_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      function §-1§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§&I§ = param1;
         }
      }
      
      function §"!Q§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!-§ = param1;
         }
      }
      
      function §>"-§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!N§ = param1;
         }
      }
      
      function §]y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§3!&§ = param1;
         }
      }
   }
}
