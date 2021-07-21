package starling.events
{
   import §default§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §1[§
   {
      
      private static var §,C§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,C§ = new Matrix();
         }
      }
      
      private var §4!2§:int;
      
      private var §5U§:Number;
      
      private var §0>§:Number;
      
      private var §%!@§:Number;
      
      private var §%!R§:Number;
      
      private var §"c§:int;
      
      private var §%!w§:String;
      
      private var §;D§:DisplayObject;
      
      private var §->§:Number;
      
      public function §1[§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            super();
            if(_loc8_ || param1)
            {
               this.§4!2§ = param1;
               if(_loc8_)
               {
                  this.§5U§ = this.§%!@§ = param2;
                  addr38:
                  if(!_loc7_)
                  {
                     addr59:
                     this.§0>§ = this.§%!R§ = param3;
                     if(_loc8_ || param2)
                     {
                        this.§"c§ = 0;
                        while(true)
                        {
                           this.§%!w§ = param4;
                           loop1:
                           while(!_loc7_)
                           {
                              while(true)
                              {
                                 this.§;D§ = param5;
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr59);
         }
         §§goto(addr38);
      }
      
      public function §=P§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§5U§,this.§0>§);
         if(!_loc3_)
         {
            this.§;D§.root.§5!m§(param1,§,C§);
         }
         return §,C§.transformPoint(_loc2_);
      }
      
      public function §'"4§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§%!@§,this.§%!R§);
         if(_loc4_ || _loc2_)
         {
            this.§;D§.root.§5!m§(param1,§,C§);
         }
         return §,C§.transformPoint(_loc2_);
      }
      
      public function clone() : §1[§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1[§ = new §1[§(this.§4!2§,this.§5U§,this.§0>§,this.§%!w§,this.§;D§);
         if(!_loc3_)
         {
            _loc1_.§%!@§ = this.§%!@§;
            while(true)
            {
               _loc1_.§%!R§ = this.§%!R§;
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  _loc1_.§"c§ = this.§"c§;
                  while(true)
                  {
                     _loc1_.§->§ = this.§->§;
                     if(!(_loc3_ && _loc1_))
                     {
                        if(_loc2_)
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
         §§goto(addr68);
      }
      
      public function get id() : int
      {
         return this.§4!2§;
      }
      
      public function get globalX() : Number
      {
         return this.§5U§;
      }
      
      public function get globalY() : Number
      {
         return this.§0>§;
      }
      
      public function get § "=§() : Number
      {
         return this.§%!@§;
      }
      
      public function get §'t§() : Number
      {
         return this.§%!R§;
      }
      
      public function get §0!T§() : int
      {
         return this.§"c§;
      }
      
      public function get phase() : String
      {
         return this.§%!w§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§;D§;
      }
      
      public function get timestamp() : Number
      {
         return this.§->§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§%!@§ = this.§5U§;
            while(true)
            {
               this.§%!R§ = this.§0>§;
               while(!_loc4_)
               {
                  this.§5U§ = param1;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§0>§ = param2;
                        if(_loc3_)
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
         §§goto(addr46);
      }
      
      function §#S§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%!w§ = param1;
         }
      }
      
      function §3!$§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"c§ = param1;
         }
      }
      
      function §0'§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§;D§ = param1;
         }
      }
      
      function §,"<§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§->§ = param1;
         }
      }
   }
}
