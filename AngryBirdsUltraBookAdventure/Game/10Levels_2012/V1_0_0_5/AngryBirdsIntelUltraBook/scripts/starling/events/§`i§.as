package starling.events
{
   import §'!9§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §`i§
   {
      
      private static var §5g§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5g§ = new Matrix();
         }
      }
      
      private var §"!=§:int;
      
      private var § true§:Number;
      
      private var §@!^§:Number;
      
      private var §%a§:Number;
      
      private var §;!&§:Number;
      
      private var §-q§:int;
      
      private var §]6§:String;
      
      private var §0!R§:DisplayObject;
      
      private var §#5§:Number;
      
      public function §`i§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            if(!_loc8_)
            {
               this.§"!=§ = param1;
               if(_loc7_ || this)
               {
                  this.§ true§ = this.§%a§ = param2;
                  if(_loc7_)
                  {
                     this.§@!^§ = this.§;!&§ = param3;
                     if(_loc7_)
                     {
                        this.§-q§ = 0;
                        addr64:
                        while(true)
                        {
                           this.§]6§ = param4;
                        }
                        addr64:
                        addr106:
                     }
                     do
                     {
                        this.§0!R§ = param5;
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                     }
                     while(!(_loc7_ || param2));
                     
                     return;
                  }
                  §§goto(addr64);
               }
               §§goto(addr106);
            }
         }
         §§goto(addr64);
      }
      
      public function §!!W§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§ true§,this.§@!^§);
         if(!(_loc4_ && _loc3_))
         {
            this.§0!R§.root.§^2§(param1,§5g§);
         }
         return §5g§.transformPoint(_loc2_);
      }
      
      public function §?!t§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§%a§,this.§;!&§);
         if(_loc4_)
         {
            this.§0!R§.root.§^2§(param1,§5g§);
         }
         return §5g§.transformPoint(_loc2_);
      }
      
      public function clone() : §`i§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§`i§ = new §`i§(this.§"!=§,this.§ true§,this.§@!^§,this.§]6§,this.§0!R§);
         if(_loc3_ || _loc3_)
         {
            _loc1_.§%a§ = this.§%a§;
            while(true)
            {
               _loc1_.§;!&§ = this.§;!&§;
               while(true)
               {
                  _loc1_.§-q§ = this.§-q§;
                  §§goto(addr91);
               }
            }
         }
         addr91:
         while(true)
         {
            _loc1_.§#5§ = this.§#5§;
            if(!(_loc2_ && _loc1_))
            {
               if(!_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr85:
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§"!=§;
      }
      
      public function get globalX() : Number
      {
         return this.§ true§;
      }
      
      public function get globalY() : Number
      {
         return this.§@!^§;
      }
      
      public function get §&x§() : Number
      {
         return this.§%a§;
      }
      
      public function get §;!M§() : Number
      {
         return this.§;!&§;
      }
      
      public function get §>+§() : int
      {
         return this.§-q§;
      }
      
      public function get phase() : String
      {
         return this.§]6§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§0!R§;
      }
      
      public function get timestamp() : Number
      {
         return this.§#5§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§%a§ = this.§ true§;
            loop0:
            do
            {
               this.§;!&§ = this.§@!^§;
               while(true)
               {
                  this.§ true§ = param1;
                  while(!_loc3_)
                  {
                     this.§@!^§ = param2;
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      function §=I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]6§ = param1;
         }
      }
      
      function §?x§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§-q§ = param1;
         }
      }
      
      function §`"§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!R§ = param1;
         }
      }
      
      function §3!c§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§#5§ = param1;
         }
      }
   }
}
