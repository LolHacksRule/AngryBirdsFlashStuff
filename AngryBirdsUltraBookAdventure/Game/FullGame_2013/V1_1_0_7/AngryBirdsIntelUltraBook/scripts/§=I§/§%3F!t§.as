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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-;§ = "setreferencesize";
            while(true)
            {
               §^k§ = "createsprite";
               loop1:
               while(true)
               {
                  §0!u§ = "scroll";
                  addr118:
                  while(true)
                  {
                     §]!e§ = "zoom";
                     continue loop1;
                  }
               }
               while(!(_loc2_ && _loc1_))
               {
                  §,h§ = "fitheight";
                  loop6:
                  while(true)
                  {
                     §&+§ = "set_bg_colour";
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop6;
                     }
                     §§goto(addr106);
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private var §!!L§:Number;
      
      private var §&!`§:Number;
      
      public function §?!t§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§!!L§ = param1;
               while(true)
               {
                  this.§&!`§ = param2;
                  while(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        this.§&!`§ = 0;
                     }
                     if(!(_loc4_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(isNaN(this.§&!`§))
         {
            §§goto(addr39);
         }
         §§goto(addr19);
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
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
                  addr45:
                  §§push(false);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr49:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr49);
         }
         §§goto(addr45);
      }
      
      public function clone() : §?!t§
      {
         return new §?!t§(this.time,this.duration);
      }
   }
}
