package §?_§
{
   import §4&§.§,C§;
   import §7!8§.Sprite;
   
   public class §3'§
   {
      
      public static const §>^§:String = "setreferencesize";
      
      public static const §4!$§:String = "createsprite";
      
      public static const §7!p§:String = "scroll";
      
      public static const §-""§:String = "zoom";
      
      public static const §7"2§:String = "playsound";
      
      public static const § 9§:String = "fitwidth";
      
      public static const §#!4§:String = "fitheight";
      
      public static const §1!U§:String = "set_bg_colour";
      
      public static const § "F§:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §>^§ = "setreferencesize";
            while(true)
            {
               §4!$§ = "createsprite";
               addr107:
               while(_loc2_)
               {
                  §7!p§ = "scroll";
               }
            }
         }
         loop2:
         while(true)
         {
            §-""§ = "zoom";
            loop3:
            while(true)
            {
               §7"2§ = "playsound";
               loop4:
               while(true)
               {
                  § 9§ = "fitwidth";
                  while(true)
                  {
                     §#!4§ = "fitheight";
                     for(; !_loc1_; while(_loc2_ || §3'§)
                     {
                        if(_loc2_)
                        {
                           § "F§ = "end";
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                           continue;
                           continue;
                        }
                        continue loop4;
                     })
                     {
                        if(!_loc2_)
                        {
                           continue loop3;
                        }
                        if(_loc2_)
                        {
                           §1!U§ = "set_bg_colour";
                           continue;
                        }
                        §§goto(addr107);
                     }
                  }
               }
            }
         }
      }
      
      private var §;"!§:Number;
      
      private var §<^§:Number;
      
      public function §3'§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§;"!§ = param1;
               loop1:
               while(true)
               {
                  this.§<^§ = param2;
                  while(true)
                  {
                     if(_loc3_ || param2)
                     {
                        continue loop0;
                     }
                     continue loop1;
                     addr31:
                     if(_loc3_ || this)
                     {
                        this.§<^§ = 0;
                        addr51:
                        break;
                     }
                  }
                  addr19:
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function get time() : Number
      {
         return this.§;"!§;
      }
      
      public function get duration() : Number
      {
         return this.§<^§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§,C§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1);
            §§push(this.time);
            if(!_loc4_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc5_)
               {
                  §§push(false);
                  if(!(_loc4_ && param2))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr59:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr59);
      }
      
      public function clone() : §3'§
      {
         return new §3'§(this.time,this.duration);
      }
   }
}
