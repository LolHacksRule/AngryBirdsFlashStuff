package starling.events
{
   import §^V§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § K§
   {
      
      private static var §"R§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §"R§ = new Matrix();
         }
      }
      
      private var §^?§:int;
      
      private var §[!-§:Number;
      
      private var §@q§:Number;
      
      private var §^!?§:Number;
      
      private var §=g§:Number;
      
      private var §#l§:int;
      
      private var §+!-§:String;
      
      private var §3!2§:DisplayObject;
      
      private var §-!A§:Number;
      
      public function § K§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            if(_loc8_ || this)
            {
               this.§^?§ = param1;
               if(_loc8_)
               {
                  this.§[!-§ = this.§^!?§ = param2;
                  this.§@q§ = this.§=g§ = param3;
                  this.§#l§ = 0;
               }
               while(true)
               {
                  this.§+!-§ = param4;
                  loop1:
                  while(_loc8_ || param3)
                  {
                     while(true)
                     {
                        this.§3!2§ = param5;
                        if(_loc8_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr82);
         }
         §§goto(addr94);
      }
      
      public function §8Q§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§[!-§,this.§@q§);
         if(_loc3_ || param1)
         {
            this.§3!2§.root.§8n§(param1,§"R§);
         }
         return §"R§.transformPoint(_loc2_);
      }
      
      public function §-^§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§^!?§,this.§=g§);
         if(!_loc4_)
         {
            this.§3!2§.root.§8n§(param1,§"R§);
         }
         return §"R§.transformPoint(_loc2_);
      }
      
      public function clone() : § K§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ K§ = new § K§(this.§^?§,this.§[!-§,this.§@q§,this.§+!-§,this.§3!2§);
         if(_loc2_)
         {
            _loc1_.§^!?§ = this.§^!?§;
            while(true)
            {
               _loc1_.§=g§ = this.§=g§;
               §§goto(addr86);
            }
         }
         addr86:
         while(true)
         {
            _loc1_.§#l§ = this.§#l§;
            do
            {
               _loc1_.§-!A§ = this.§-!A§;
            }
            while(_loc3_);
            
            if(_loc2_ || this)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§^?§;
      }
      
      public function get globalX() : Number
      {
         return this.§[!-§;
      }
      
      public function get globalY() : Number
      {
         return this.§@q§;
      }
      
      public function get §#I§() : Number
      {
         return this.§^!?§;
      }
      
      public function get § !3§() : Number
      {
         return this.§=g§;
      }
      
      public function get §#'§() : int
      {
         return this.§#l§;
      }
      
      public function get phase() : String
      {
         return this.§+!-§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§3!2§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-!A§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§^!?§ = this.§[!-§;
         }
         loop0:
         do
         {
            this.§=g§ = this.§@q§;
            while(true)
            {
               this.§[!-§ = param1;
               while(!(_loc3_ && param1))
               {
                  this.§@q§ = param2;
                  if(!(_loc3_ && param2))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      function §5!>§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!-§ = param1;
         }
      }
      
      function §[>§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#l§ = param1;
         }
      }
      
      function §!g§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§3!2§ = param1;
         }
      }
      
      function §2!C§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§-!A§ = param1;
         }
      }
   }
}
