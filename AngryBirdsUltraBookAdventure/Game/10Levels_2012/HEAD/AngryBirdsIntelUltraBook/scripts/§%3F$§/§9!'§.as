package §?$§
{
   import §1!&§.Sprite;
   import §8!?§.TextureManager;
   
   public class §9!'§
   {
      
      public static const §9E§:String = "setreferencesize";
      
      public static const § !A§:String = "createsprite";
      
      public static const §`!R§:String = "scroll";
      
      public static const §;9§:String = "zoom";
      
      public static const §''§:String = "playsound";
      
      public static const §&2§:String = "fitwidth";
      
      public static const §4!,§:String = "fitheight";
      
      public static const §;!Q§:String = "set_bg_colour";
      
      public static const §=!Y§:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9E§ = "setreferencesize";
            loop0:
            while(true)
            {
               § !A§ = "createsprite";
               loop1:
               while(true)
               {
                  §`!R§ = "scroll";
                  while(!_loc2_)
                  {
                     §;9§ = "zoom";
                     while(!(_loc2_ && _loc1_))
                     {
                        §''§ = "playsound";
                        while(!_loc2_)
                        {
                           §&2§ = "fitwidth";
                           loop5:
                           while(true)
                           {
                              §4!,§ = "fitheight";
                              do
                              {
                                 §;!Q§ = "set_bg_colour";
                                 continue loop5;
                              }
                              while(_loc2_);
                              
                              return;
                           }
                           if(_loc2_ && §9!'§)
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
      
      private var §>2§:Number;
      
      private var §4!M§:Number;
      
      public function §9!'§(param1:Number, param2:Number)
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
            this.§>2§ = param1;
            while(true)
            {
               this.§4!M§ = param2;
               while(true)
               {
                  if(_loc3_)
                  {
                     if(!isNaN(this.§4!M§))
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
         return this.§>2§;
      }
      
      public function get duration() : Number
      {
         return this.§4!M§;
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
      
      public function clone() : §9!'§
      {
         return new §9!'§(this.time,this.duration);
      }
   }
}
