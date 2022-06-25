package §"!&§
{
   import §,6§.§!o§;
   import §9E§.Sprite;
   
   public class §!!%§
   {
      
      public static const §,1§:String = "setreferencesize";
      
      public static const §<!Q§:String = "createsprite";
      
      public static const §+!S§:String = "scroll";
      
      public static const §4!M§:String = "zoom";
      
      public static const §,!3§:String = "playsound";
      
      public static const §^!,§:String = "fitwidth";
      
      public static const §]!F§:String = "fitheight";
      
      public static const §'l§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §,1§ = "setreferencesize";
         }
         loop0:
         while(true)
         {
            §<!Q§ = "createsprite";
            loop1:
            while(true)
            {
               §+!S§ = "scroll";
               loop2:
               while(true)
               {
                  §4!M§ = "zoom";
                  while(true)
                  {
                     §,!3§ = "playsound";
                     loop4:
                     for(; !(_loc1_ && _loc1_); while(!(_loc1_ && §!!%§))
                     {
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        §'l§ = "set_bg_colour";
                        §§goto(addr42);
                     })
                     {
                        if(!_loc1_)
                        {
                           §^!,§ = "fitwidth";
                           while(_loc2_)
                           {
                              §]!F§ = "fitheight";
                              continue loop4;
                              while(!(_loc1_ && §!!%§))
                              {
                                 END = "end";
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private var §?Q§:Number;
      
      private var §[!&§:Number;
      
      public function §!!%§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§?Q§ = param1;
               loop1:
               while(true)
               {
                  this.§[!&§ = param2;
                  while(isNaN(this.§[!&§))
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr24);
               }
            }
         }
         addr24:
      }
      
      public function get time() : Number
      {
         return this.§?Q§;
      }
      
      public function get duration() : Number
      {
         return this.§[!&§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§!o§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_)
               {
                  §§push(false);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr43:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr43);
      }
      
      public function clone() : §!!%§
      {
         return new §!!%§(this.time,this.duration);
      }
   }
}
