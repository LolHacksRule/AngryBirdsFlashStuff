package §9!7§
{
   import §,_§.Sprite;
   import §5`§.§?y§;
   
   public class §`E§
   {
      
      public static const §'l§:String = "setreferencesize";
      
      public static const §#r§:String = "createsprite";
      
      public static const §#p§:String = "scroll";
      
      public static const §8,§:String = "zoom";
      
      public static const §'V§:String = "playsound";
      
      public static const §-!&§:String = "fitwidth";
      
      public static const §[t§:String = "fitheight";
      
      public static const §&J§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'l§ = "setreferencesize";
            if(!_loc2_)
            {
               §#r§ = "createsprite";
               if(!_loc2_)
               {
                  §#p§ = "scroll";
                  §8,§ = "zoom";
                  if(_loc1_ || _loc2_)
                  {
                     §'V§ = "playsound";
                     addr64:
                     §-!&§ = "fitwidth";
                  }
                  §[t§ = "fitheight";
                  if(!_loc2_)
                  {
                     addr72:
                     §&J§ = "set_bg_colour";
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr80);
                  }
                  END = "end";
                  addr80:
                  return;
               }
               §§goto(addr72);
            }
            §§goto(addr64);
         }
         §§goto(addr72);
      }
      
      private var §9!8§:Number;
      
      private var §@z§:Number;
      
      public function §`E§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            if(!(_loc4_ && this))
            {
               addr52:
               this.§9!8§ = param1;
               if(_loc3_)
               {
                  this.§@z§ = param2;
                  if(_loc3_)
                  {
                     if(isNaN(this.§@z§))
                     {
                        if(_loc3_ || param1)
                        {
                           this.§@z§ = 0;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function get time() : Number
      {
         return this.§9!8§;
      }
      
      public function get duration() : Number
      {
         return this.§@z§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc5_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc5_ || param3)
               {
                  §§push(false);
                  if(_loc5_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  §§push(true);
               }
               return §§pop();
            }
         }
         §§goto(addr54);
      }
      
      public function clone() : §`E§
      {
         return new §`E§(this.time,this.duration);
      }
   }
}
