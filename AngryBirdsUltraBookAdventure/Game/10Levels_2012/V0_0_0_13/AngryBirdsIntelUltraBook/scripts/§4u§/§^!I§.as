package §4u§
{
   import §,!_§.TextureManager;
   import §6!7§.Sprite;
   
   public class §^!I§
   {
      
      public static const §const§:String = "setreferencesize";
      
      public static const § W§:String = "createsprite";
      
      public static const §[!h§:String = "scroll";
      
      public static const §-X§:String = "zoom";
      
      public static const §;e§:String = "playsound";
      
      public static const §2!C§:String = "fitwidth";
      
      public static const §^S§:String = "fitheight";
      
      public static const §"V§:String = "set_bg_colour";
      
      public static const §-2§:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §const§ = "setreferencesize";
            loop0:
            while(true)
            {
               § W§ = "createsprite";
               loop1:
               while(true)
               {
                  §[!h§ = "scroll";
                  while(!_loc2_)
                  {
                     §-X§ = "zoom";
                     while(!(_loc2_ && _loc1_))
                     {
                        §;e§ = "playsound";
                        while(!_loc2_)
                        {
                           §2!C§ = "fitwidth";
                           loop5:
                           while(true)
                           {
                              §^S§ = "fitheight";
                              do
                              {
                                 §"V§ = "set_bg_colour";
                                 continue loop5;
                              }
                              while(_loc2_);
                              
                              return;
                           }
                           if(_loc2_ && §^!I§)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           §§goto(addr67);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr77);
      }
      
      private var §2+§:Number;
      
      private var §-! §:Number;
      
      public function §^!I§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§2+§ = param1;
            while(true)
            {
               this.§-! § = param2;
               while(true)
               {
                  if(_loc3_)
                  {
                     if(!isNaN(this.§-! §))
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
         }
      }
      
      public function get time() : Number
      {
         return this.§2+§;
      }
      
      public function get duration() : Number
      {
         return this.§-! §;
      }
      
      public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_ || this)
               {
                  addr49:
                  §§push(false);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      public function clone() : §^!I§
      {
         return new §^!I§(this.time,this.duration);
      }
   }
}
