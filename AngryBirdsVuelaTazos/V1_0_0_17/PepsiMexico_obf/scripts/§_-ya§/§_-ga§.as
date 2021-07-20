package §_-ya§
{
   import §_-LP§.Sprite;
   
   public class §_-ga§
   {
      
      public static const §_-sO§:String = "setreferencesize";
      
      public static const §_-ao§:String = "createsprite";
      
      public static const §_-8R§:String = "scroll";
      
      public static const §_-uz§:String = "playsound";
      
      public static const §_-8Q§:String = "fitwidth";
      
      public static const §_-tu§:String = "fitheight";
      
      public static const §_-1B§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-sO§ = "setreferencesize";
            §_-ao§ = "createsprite";
            if(_loc2_ || _loc2_)
            {
               §_-8R§ = "scroll";
               §_-uz§ = "playsound";
               if(!(_loc1_ && _loc2_))
               {
                  §_-8Q§ = "fitwidth";
                  §_-tu§ = "fitheight";
                  if(!_loc1_)
                  {
                     addr64:
                     §_-1B§ = "set_bg_colour";
                  }
                  END = "end";
                  §§goto(addr70);
               }
            }
            §§goto(addr64);
         }
         addr70:
      }
      
      private var §_-c0§:Number;
      
      private var §_-yT§:Number;
      
      public function §_-ga§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
            if(!(_loc3_ && param1))
            {
               addr37:
               this.§_-c0§ = param1;
               if(_loc4_)
               {
                  this.§_-yT§ = param2;
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr61);
               }
               if(isNaN(this.§_-yT§))
               {
                  if(_loc4_)
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr61);
            }
            addr61:
            this.§_-yT§ = 0;
            return;
         }
         §§goto(addr37);
      }
      
      public function get time() : Number
      {
         return this.§_-c0§;
      }
      
      public function get duration() : Number
      {
         return this.§_-yT§;
      }
      
      public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_ || _loc3_)
               {
                  addr44:
                  §§push(false);
                  if(!(_loc3_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr60:
                  §§push(true);
               }
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr44);
      }
      
      public function clone() : §_-ga§
      {
         return new §_-ga§(this.time,this.duration);
      }
   }
}
