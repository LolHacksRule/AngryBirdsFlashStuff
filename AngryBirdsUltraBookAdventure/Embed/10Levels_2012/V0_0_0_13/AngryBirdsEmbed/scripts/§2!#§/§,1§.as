package §2!#§
{
   import §-!0§.§'!3§;
   import §?^§.Sprite;
   
   public class §,1§
   {
      
      public static const §>L§:String = "setreferencesize";
      
      public static const §@8§:String = "createsprite";
      
      public static const §3M§:String = "scroll";
      
      public static const §2Y§:String = "zoom";
      
      public static const §&!3§:String = "playsound";
      
      public static const §]-§:String = "fitwidth";
      
      public static const §&>§:String = "fitheight";
      
      public static const §1§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §@8§ = "createsprite";
            §3M§ = "scroll";
            if(!_loc2_)
            {
               §2Y§ = "zoom";
               if(_loc1_)
               {
                  addr59:
                  §&!3§ = "playsound";
                  if(_loc1_)
                  {
                     §]-§ = "fitwidth";
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr79);
               }
               addr74:
               §&>§ = "fitheight";
               if(_loc1_)
               {
                  addr79:
                  §1§ = "set_bg_colour";
                  END = "end";
               }
               return;
            }
         }
         §§goto(addr59);
      }
      
      private var §=,§:Number;
      
      private var §8!F§:Number;
      
      public function §,1§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               this.§=,§ = param1;
               if(_loc4_)
               {
                  this.§8!F§ = param2;
                  if(!(_loc3_ && param2))
                  {
                     addr58:
                     if(isNaN(this.§8!F§))
                     {
                        if(!(_loc3_ && param1))
                        {
                           addr70:
                           this.§8!F§ = 0;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr58);
            }
         }
         §§goto(addr70);
      }
      
      public function get time() : Number
      {
         return this.§=,§;
      }
      
      public function get duration() : Number
      {
         return this.§8!F§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§'!3§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
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
                  if(!(_loc5_ && param3))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  §§push(true);
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr39);
      }
      
      public function clone() : §,1§
      {
         return new §,1§(this.time,this.duration);
      }
   }
}
