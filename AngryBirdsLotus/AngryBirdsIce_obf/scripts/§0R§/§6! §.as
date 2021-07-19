package §0R§
{
   import §1n§.§5#§;
   import §^V§.Sprite;
   
   public class §6! §
   {
      
      public static const §=-§:String = "setreferencesize";
      
      public static const §>r§:String = "createsprite";
      
      public static const §1E§:String = "scroll";
      
      public static const §;!"§:String = "zoom";
      
      public static const §>?§:String = "playsound";
      
      public static const §-B§:String = "fitwidth";
      
      public static const §44§:String = "fitheight";
      
      public static const §2B§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §=-§ = "setreferencesize";
            §>r§ = "createsprite";
            §1E§ = "scroll";
         }
         loop0:
         while(true)
         {
            §>?§ = "playsound";
            §-B§ = "fitwidth";
            loop1:
            while(true)
            {
               §44§ = "fitheight";
               loop2:
               do
               {
                  §2B§ = "set_bg_colour";
                  while(!_loc2_)
                  {
                     continue loop0;
                     END = "end";
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc2_ && §6! §);
               
               return;
            }
         }
      }
      
      private var § !A§:Number;
      
      private var §,!6§:Number;
      
      public function §6! §(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§ !A§ = param1;
            loop1:
            while(true)
            {
               this.§,!6§ = param2;
               while(true)
               {
                  if(_loc3_ || param2)
                  {
                     if(!isNaN(this.§,!6§))
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               }
               §§goto(addr19);
            }
            if(_loc3_ || param1)
            {
               addr19:
               return;
            }
         }
      }
      
      public function get time() : Number
      {
         return this.§ !A§;
      }
      
      public function get duration() : Number
      {
         return this.§,!6§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_ || param2)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!_loc5_)
               {
                  §§push(false);
                  if(_loc4_ || param2)
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
      
      public function clone() : §6! §
      {
         return new §6! §(this.time,this.duration);
      }
   }
}
