package §'7§
{
   import § N§.Sprite;
   import §#e§.§'?§;
   
   public class §@!F§
   {
      
      public static const §^i§:String = "setreferencesize";
      
      public static const §=5§:String = "createsprite";
      
      public static const §,!P§:String = "scroll";
      
      public static const §5&§:String = "zoom";
      
      public static const §@`§:String = "playsound";
      
      public static const §!!=§:String = "fitwidth";
      
      public static const §0d§:String = "fitheight";
      
      public static const §-T§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^i§ = "setreferencesize";
            while(true)
            {
               §=5§ = "createsprite";
               §,!P§ = "scroll";
               while(true)
               {
                  §5&§ = "zoom";
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr83);
               }
            }
         }
         addr83:
         while(true)
         {
            §@`§ = "playsound";
            §!!=§ = "fitwidth";
            do
            {
               §0d§ = "fitheight";
               §-T§ = "set_bg_colour";
            }
            while(_loc2_);
            
            END = "end";
            if(!(_loc2_ && _loc2_))
            {
               break;
            }
            continue loop1;
         }
      }
      
      private var §-!9§:Number;
      
      private var §#!A§:Number;
      
      public function §@!F§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§-!9§ = param1;
            loop1:
            while(true)
            {
               this.§#!A§ = param2;
               while(isNaN(this.§#!A§))
               {
                  if(!_loc3_)
                  {
                     continue loop1;
                  }
                  if(_loc4_ || param2)
                  {
                     break;
                  }
               }
               return;
            }
            if(!(_loc4_ || _loc3_))
            {
               continue;
            }
            this.§#!A§ = 0;
            §§goto(addr69);
         }
      }
      
      public function get time() : Number
      {
         return this.§-!9§;
      }
      
      public function get duration() : Number
      {
         return this.§#!A§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            §§push(this.time);
            if(!_loc5_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_)
               {
                  addr39:
                  §§push(false);
                  if(_loc4_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr39);
      }
      
      public function clone() : §@!F§
      {
         return new §@!F§(this.time,this.duration);
      }
   }
}
