package §%r§
{
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   
   public class §,!b§
   {
      
      public static const §;P§:String = "setreferencesize";
      
      public static const §,!#§:String = "createsprite";
      
      public static const §,+§:String = "scroll";
      
      public static const §10§:String = "zoom";
      
      public static const §-J§:String = "playsound";
      
      public static const §#!&§:String = "fitwidth";
      
      public static const §]K§:String = "fitheight";
      
      public static const §6b§:String = "set_bg_colour";
      
      public static const §1d§:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;P§ = "setreferencesize";
            while(true)
            {
               §,!#§ = "createsprite";
               addr129:
               loop1:
               while(true)
               {
                  §,+§ = "scroll";
                  while(true)
                  {
                     §10§ = "zoom";
                     addr42:
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
               addr85:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §6b§ = "set_bg_colour";
               loop7:
               while(!(_loc1_ && §,!b§))
               {
                  §1d§ = "end";
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  addr35:
                  if(!(_loc1_ && §,!b§))
                  {
                     §§goto(addr42);
                  }
                  while(true)
                  {
                     §-J§ = "playsound";
                     while(true)
                     {
                        §#!&§ = "fitwidth";
                        addr107:
                        while(!_loc1_)
                        {
                           §]K§ = "fitheight";
                           break loop7;
                        }
                     }
                     §§goto(addr35);
                  }
                  §§goto(addr66);
                  addr119:
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     §§goto(addr85);
                  }
                  else
                  {
                     §§goto(addr107);
                  }
               }
               addr71:
               §§goto(addr129);
            }
         }
         §§goto(addr119);
      }
      
      private var §28§:Number;
      
      private var §<N§:Number;
      
      public function §,!b§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§28§ = param1;
            loop1:
            while(true)
            {
               this.§<N§ = param2;
               do
               {
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  continue loop1;
                  if(_loc3_)
                  {
                     this.§<N§ = 0;
                  }
               }
               while(_loc4_);
               
               addr24:
               return;
            }
         }
      }
      
      public function get time() : Number
      {
         return this.§28§;
      }
      
      public function get duration() : Number
      {
         return this.§<N§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!_loc5_)
               {
                  §§push(false);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr48);
      }
      
      public function clone() : §,!b§
      {
         return new §,!b§(this.time,this.duration);
      }
   }
}
