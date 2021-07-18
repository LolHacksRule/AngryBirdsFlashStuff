package starling.events
{
   import §]@§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §5v§
   {
      
      private static var §1![§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §1![§ = new Matrix();
         }
      }
      
      private var §,Z§:int;
      
      private var §^![§:Number;
      
      private var §=!6§:Number;
      
      private var §5!§:Number;
      
      private var §3I§:Number;
      
      private var §`h§:int;
      
      private var §'!J§:String;
      
      private var §`!^§:DisplayObject;
      
      private var §9z§:Number;
      
      public function §5v§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            super();
            if(_loc7_)
            {
               §§goto(addr27);
            }
            §§goto(addr37);
         }
         addr27:
         this.§,Z§ = param1;
         if(_loc7_ || param2)
         {
            this.§^![§ = this.§5!§ = param2;
            addr37:
            if(!(_loc8_ && param2))
            {
               this.§=!6§ = this.§3I§ = param3;
               if(!_loc8_)
               {
                  this.§`h§ = 0;
               }
               while(true)
               {
                  this.§'!J§ = param4;
                  §§goto(addr107);
               }
            }
         }
         addr107:
         while(true)
         {
            this.§`!^§ = param5;
            if(_loc7_ || param2)
            {
               if(_loc7_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function § d§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§^![§,this.§=!6§);
         if(_loc3_ || this)
         {
            this.§`!^§.root.§=!;§(param1,§1![§);
         }
         return §1![§.transformPoint(_loc2_);
      }
      
      public function §=L§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§5!§,this.§3I§);
         if(!_loc3_)
         {
            this.§`!^§.root.§=!;§(param1,§1![§);
         }
         return §1![§.transformPoint(_loc2_);
      }
      
      public function clone() : §5v§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§5v§ = new §5v§(this.§,Z§,this.§^![§,this.§=!6§,this.§'!J§,this.§`!^§);
         if(!(_loc2_ && this))
         {
            _loc1_.§5!§ = this.§5!§;
            while(true)
            {
               _loc1_.§3I§ = this.§3I§;
               loop1:
               for(; _loc3_ || _loc1_; while(!(_loc2_ && this))
               {
                  _loc1_.§9z§ = this.§9z§;
                  if(_loc3_)
                  {
                     return _loc1_;
                  }
               })
               {
                  while(true)
                  {
                     _loc1_.§`h§ = this.§`h§;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function get id() : int
      {
         return this.§,Z§;
      }
      
      public function get globalX() : Number
      {
         return this.§^![§;
      }
      
      public function get globalY() : Number
      {
         return this.§=!6§;
      }
      
      public function get §`!-§() : Number
      {
         return this.§5!§;
      }
      
      public function get §;!K§() : Number
      {
         return this.§3I§;
      }
      
      public function get §!!8§() : int
      {
         return this.§`h§;
      }
      
      public function get phase() : String
      {
         return this.§'!J§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§`!^§;
      }
      
      public function get timestamp() : Number
      {
         return this.§9z§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§5!§ = this.§^![§;
            while(true)
            {
               this.§3I§ = this.§=!6§;
               while(_loc4_ || _loc3_)
               {
                  this.§^![§ = param1;
                  loop2:
                  while(_loc4_ || _loc3_)
                  {
                     while(true)
                     {
                        this.§=!6§ = param2;
                        if(_loc4_ || param2)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      function §^E§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!J§ = param1;
         }
      }
      
      function § N§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§`h§ = param1;
         }
      }
      
      function §&2§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§`!^§ = param1;
         }
      }
      
      function §^!3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§9z§ = param1;
         }
      }
   }
}
