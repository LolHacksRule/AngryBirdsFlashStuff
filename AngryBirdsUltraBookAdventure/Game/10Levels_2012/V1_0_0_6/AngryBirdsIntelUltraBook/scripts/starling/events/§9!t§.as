package starling.events
{
   import §7!B§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §9!t§
   {
      
      private static var §'V§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'V§ = new Matrix();
         }
      }
      
      private var §^!v§:int;
      
      private var §^0§:Number;
      
      private var §<!i§:Number;
      
      private var §`!W§:Number;
      
      private var §<j§:Number;
      
      private var §3q§:int;
      
      private var §[!h§:String;
      
      private var §#j§:DisplayObject;
      
      private var §96§:Number;
      
      public function §9!t§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            if(_loc7_)
            {
               this.§^!v§ = param1;
               if(_loc7_ || param3)
               {
                  this.§^0§ = this.§`!W§ = param2;
                  if(!(_loc8_ && this))
                  {
                     addr58:
                     this.§<!i§ = this.§<j§ = param3;
                     if(!(_loc8_ && this))
                     {
                        this.§3q§ = 0;
                        addr111:
                        while(true)
                        {
                           this.§[!h§ = param4;
                        }
                        addr111:
                     }
                     return;
                     addr102:
                  }
                  while(true)
                  {
                     this.§#j§ = param5;
                     if(_loc8_)
                     {
                        continue;
                     }
                     if(_loc7_ || param3)
                     {
                        break;
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr102);
               }
            }
            §§goto(addr58);
         }
         §§goto(addr111);
      }
      
      public function §5J§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§^0§,this.§<!i§);
         if(!(_loc3_ && _loc3_))
         {
            this.§#j§.root.§6!8§(param1,§'V§);
         }
         return §'V§.transformPoint(_loc2_);
      }
      
      public function §?W§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§`!W§,this.§<j§);
         if(!(_loc3_ && _loc3_))
         {
            this.§#j§.root.§6!8§(param1,§'V§);
         }
         return §'V§.transformPoint(_loc2_);
      }
      
      public function clone() : §9!t§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§9!t§ = new §9!t§(this.§^!v§,this.§^0§,this.§<!i§,this.§[!h§,this.§#j§);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§`!W§ = this.§`!W§;
            while(true)
            {
               _loc1_.§<j§ = this.§<j§;
               while(_loc3_)
               {
                  _loc1_.§3q§ = this.§3q§;
                  do
                  {
                     _loc1_.§96§ = this.§96§;
                  }
                  while(!_loc3_);
                  
                  if(!_loc2_)
                  {
                     return _loc1_;
                     addr73:
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function get id() : int
      {
         return this.§^!v§;
      }
      
      public function get globalX() : Number
      {
         return this.§^0§;
      }
      
      public function get globalY() : Number
      {
         return this.§<!i§;
      }
      
      public function get § !&§() : Number
      {
         return this.§`!W§;
      }
      
      public function get §'o§() : Number
      {
         return this.§<j§;
      }
      
      public function get §8_§() : int
      {
         return this.§3q§;
      }
      
      public function get phase() : String
      {
         return this.§[!h§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§#j§;
      }
      
      public function get timestamp() : Number
      {
         return this.§96§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§`!W§ = this.§^0§;
            loop0:
            while(true)
            {
               this.§<j§ = this.§<!i§;
               loop1:
               do
               {
                  this.§^0§ = param1;
                  while(!_loc3_)
                  {
                     this.§<!i§ = param2;
                     if(_loc4_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc3_);
               
            }
         }
      }
      
      function §3!f§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!h§ = param1;
         }
      }
      
      function §-A§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3q§ = param1;
         }
      }
      
      function §?&§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#j§ = param1;
         }
      }
      
      function §>!E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§96§ = param1;
         }
      }
   }
}
