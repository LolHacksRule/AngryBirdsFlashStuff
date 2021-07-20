package §4;§
{
   import §'!6§.Sprite;
   import §<T§.§`m§;
   
   public class §^g§
   {
      
      public static const §%!c§:String = "setreferencesize";
      
      public static const §^!V§:String = "createsprite";
      
      public static const §9;§:String = "scroll";
      
      public static const §-a§:String = "zoom";
      
      public static const §[Q§:String = "playsound";
      
      public static const §`!E§:String = "fitwidth";
      
      public static const §4e§:String = "fitheight";
      
      public static const §2!'§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!c§ = "setreferencesize";
         }
         loop0:
         while(true)
         {
            §^!V§ = "createsprite";
            while(true)
            {
               §9;§ = "scroll";
               loop2:
               for(; !(_loc2_ && _loc2_); if(_loc2_ && §^g§)
               {
                  continue;
               },§4e§ = "fitheight",while(_loc1_)
               {
                  §2!'§ = "set_bg_colour";
                  while(_loc1_ || _loc1_)
                  {
                     END = "end";
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop0;
                     }
                  }
               },§§goto(addr65))
               {
                  §-a§ = "zoom";
                  loop3:
                  while(true)
                  {
                     §[Q§ = "playsound";
                     loop4:
                     while(true)
                     {
                        §`!E§ = "fitwidth";
                        addr65:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private var §"!M§:Number;
      
      private var §0!=§:Number;
      
      public function §^g§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"!M§ = param1;
               while(true)
               {
                  this.§0!=§ = param2;
                  addr56:
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  this.§0!=§ = 0;
                  addr66:
                  if(_loc4_)
                  {
                     while(isNaN(this.§0!=§))
                     {
                        if(!(_loc4_ && param2))
                        {
                           §§goto(addr56);
                        }
                        §§goto(addr66);
                     }
                     addr19:
                     return;
                     addr75:
                  }
                  if(_loc4_)
                  {
                     continue loop0;
                  }
                  §§goto(addr19);
               }
            }
         }
         §§goto(addr75);
      }
      
      public function get time() : Number
      {
         return this.§"!M§;
      }
      
      public function get duration() : Number
      {
         return this.§0!=§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            §§push(this.time);
            if(_loc5_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!(_loc4_ && param2))
               {
                  §§push(false);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr54);
      }
      
      public function clone() : §^g§
      {
         return new §^g§(this.time,this.duration);
      }
   }
}
