package §@!L§
{
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   
   public class §9N§
   {
      
      public static const §^!"§:String = "setreferencesize";
      
      public static const §[!9§:String = "createsprite";
      
      public static const §@!z§:String = "scroll";
      
      public static const §?F§:String = "zoom";
      
      public static const §8!O§:String = "playsound";
      
      public static const §?!i§:String = "fitwidth";
      
      public static const §`!k§:String = "fitheight";
      
      public static const §;!y§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^!"§ = "setreferencesize";
            while(true)
            {
               §[!9§ = "createsprite";
            }
            addr128:
         }
         loop1:
         while(true)
         {
            §@!z§ = "scroll";
            addr117:
            while(!_loc1_)
            {
               §?F§ = "zoom";
               while(true)
               {
                  §8!O§ = "playsound";
                  continue loop1;
               }
            }
            §§goto(addr128);
         }
      }
      
      private var §[f§:Number;
      
      private var §+o§:Number;
      
      public function §9N§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§[f§ = param1;
               loop1:
               while(true)
               {
                  this.§+o§ = param2;
                  while(isNaN(this.§+o§))
                  {
                     if(!_loc4_)
                     {
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  addr19:
                  return;
               }
            }
         }
         while(true)
         {
            this.§+o§ = 0;
            §§goto(addr63);
         }
      }
      
      public function get time() : Number
      {
         return this.§[f§;
      }
      
      public function get duration() : Number
      {
         return this.§+o§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(param1);
            §§push(this.time);
            if(!_loc5_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!_loc5_)
               {
                  addr44:
                  §§push(false);
                  if(!(_loc5_ && param2))
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
         §§goto(addr44);
      }
      
      public function clone() : §9N§
      {
         return new §9N§(this.time,this.duration);
      }
   }
}
