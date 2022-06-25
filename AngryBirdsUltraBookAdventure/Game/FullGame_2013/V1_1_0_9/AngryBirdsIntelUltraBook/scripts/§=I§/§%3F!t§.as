package §=I§
{
   import §=`§.§6!I§;
   import §`g§.Sprite;
   
   public class §?!t§
   {
      
      public static const §-;§:String = "setreferencesize";
      
      public static const §^k§:String = "createsprite";
      
      public static const §0!u§:String = "scroll";
      
      public static const §]!e§:String = "zoom";
      
      public static const §;X§:String = "playsound";
      
      public static const §else §:String = "fitwidth";
      
      public static const §,h§:String = "fitheight";
      
      public static const §&+§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-;§ = "setreferencesize";
         }
         loop0:
         while(true)
         {
            §^k§ = "createsprite";
            loop1:
            while(true)
            {
               §0!u§ = "scroll";
               loop2:
               while(true)
               {
                  §]!e§ = "zoom";
                  while(true)
                  {
                     §;X§ = "playsound";
                     continue loop2;
                     addr46:
                     if(_loc2_)
                     {
                        END = "end";
                        addr58:
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              if(_loc1_ && _loc1_)
                              {
                                 while(!(_loc1_ && §?!t§))
                                 {
                                    §,h§ = "fitheight";
                                    continue loop1;
                                 }
                                 continue loop2;
                                 addr75:
                              }
                              §§goto(addr46);
                              §§goto(addr58);
                           }
                           continue;
                           addr39:
                        }
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private var §!!L§:Number;
      
      private var §&!`§:Number;
      
      public function §?!t§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§!!L§ = param1;
            loop1:
            while(true)
            {
               this.§&!`§ = param2;
               while(isNaN(this.§&!`§))
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(!(_loc4_ && param2))
                     {
                        continue loop0;
                     }
                     continue;
                     continue;
                  }
                  addr78:
                  if(!_loc4_)
                  {
                     break;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      public function get time() : Number
      {
         return this.§!!L§;
      }
      
      public function get duration() : Number
      {
         return this.§&!`§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(param1);
            §§push(this.time);
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_)
               {
                  §§push(false);
                  if(!(_loc5_ && param2))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr68:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr68);
      }
      
      public function clone() : §?!t§
      {
         return new §?!t§(this.time,this.duration);
      }
   }
}
