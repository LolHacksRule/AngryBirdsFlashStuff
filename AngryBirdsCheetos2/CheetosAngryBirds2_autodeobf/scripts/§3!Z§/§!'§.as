package §3!Z§
{
   import §9t§.§=!>§;
   import §^a§.Sprite;
   
   public class §!'§
   {
      
      public static const §!?§:String = "setreferencesize";
      
      public static const §7!H§:String = "createsprite";
      
      public static const §4!D§:String = "scroll";
      
      public static const §-!%§:String = "zoom";
      
      public static const §@!$§:String = "playsound";
      
      public static const §0!V§:String = "fitwidth";
      
      public static const § Y§:String = "fitheight";
      
      public static const § !c§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §!'§)
         {
            §!?§ = "setreferencesize";
            while(true)
            {
               §7!H§ = "createsprite";
               loop1:
               for(; _loc1_; if(!(_loc1_ || §!'§))
               {
                  continue;
               },§ Y§ = "fitheight",§§goto(addr70))
               {
                  §4!D§ = "scroll";
                  loop2:
                  while(true)
                  {
                     §-!%§ = "zoom";
                     while(true)
                     {
                        §@!$§ = "playsound";
                        loop7:
                        while(_loc1_ || _loc2_)
                        {
                           END = "end";
                           if(!(_loc2_ && §!'§))
                           {
                              if(_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 addr70:
                              }
                              while(!_loc2_)
                              {
                                 § !c§ = "set_bg_colour";
                                 continue loop7;
                              }
                              loop5:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 addr91:
                                 while(true)
                                 {
                                    §0!V§ = "fitwidth";
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      private var §#!c§:Number;
      
      private var §,!I§:Number;
      
      public function §!'§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§#!c§ = param1;
               loop1:
               while(true)
               {
                  this.§,!I§ = param2;
                  loop2:
                  while(isNaN(this.§,!I§))
                  {
                     if(!_loc4_)
                     {
                        continue loop1;
                     }
                     while(true)
                     {
                        if(!(_loc4_ && this))
                        {
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§,!I§ = 0;
            §§goto(addr51);
         }
      }
      
      public function get time() : Number
      {
         return this.§#!c§;
      }
      
      public function get duration() : Number
      {
         return this.§,!I§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            §§push(this.time);
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!(_loc5_ && param3))
               {
                  §§push(false);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr63);
      }
      
      public function clone() : §!'§
      {
         return new §!'§(this.time,this.duration);
      }
   }
}
