package §9!$§
{
   import §-!`§.Sprite;
   import §=U§.§3p§;
   
   public class §&!W§
   {
      
      public static const §5b§:String = "setreferencesize";
      
      public static const §][§:String = "createsprite";
      
      public static const §5!u§:String = "scroll";
      
      public static const §9J§:String = "zoom";
      
      public static const §]V§:String = "playsound";
      
      public static const §%E§:String = "fitwidth";
      
      public static const §+!f§:String = "fitheight";
      
      public static const §#Y§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §]V§ = "playsound";
            if(_loc2_)
            {
               §%E§ = "fitwidth";
               if(_loc2_)
               {
                  addr66:
                  §+!f§ = "fitheight";
                  if(_loc2_ || §&!W§)
                  {
                     §#Y§ = "set_bg_colour";
                     if(_loc2_ || _loc1_)
                     {
                        addr86:
                        END = "end";
                     }
                     return;
                  }
               }
            }
            §§goto(addr86);
         }
         §§goto(addr66);
      }
      
      private var §8!N§:Number;
      
      private var §&!G§:Number;
      
      public function §&!W§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            if(!(_loc4_ && _loc3_))
            {
               this.§8!N§ = param1;
               if(_loc3_)
               {
                  §§goto(addr52);
               }
            }
            §§goto(addr74);
         }
         addr52:
         this.§&!G§ = param2;
         if(!(_loc4_ && _loc3_))
         {
            if(isNaN(this.§&!G§))
            {
               if(!(_loc4_ && param2))
               {
                  addr74:
                  this.§&!G§ = 0;
               }
            }
         }
      }
      
      public function get time() : Number
      {
         return this.§8!N§;
      }
      
      public function get duration() : Number
      {
         return this.§&!G§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_ || param3)
               {
                  §§push(false);
                  if(_loc4_ || param3)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  §§push(true);
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
      
      public function clone() : §&!W§
      {
         return new §&!W§(this.time,this.duration);
      }
   }
}
