package §1"H§
{
   import §"!&§.§"v§;
   import §'4§.§^g§;
   import §7!8§.DisplayObject;
   
   public class §5!U§ extends §>g§
   {
       
      
      private var §@!]§:DisplayObject;
      
      public function §5!U§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§"v§, param6:Number = 1)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param2,param3,param4,param5,param6);
            while(true)
            {
               this.§@!]§ = param1;
               loop1:
               while(_loc7_ || param3)
               {
                  while(true)
                  {
                     this.update(0);
                     if(!(_loc8_ && param2))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function get §,"F§() : DisplayObject
      {
         return this.§@!]§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§@!]§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr80:
                     this.§@!]§.dispose();
                  }
                  do
                  {
                     this.§@!]§ = null;
                  }
                  while(_loc1_ && _loc1_);
                  
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.update(param1));
         if(!(_loc4_ && this))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.§@!]§);
            loop0:
            while(true)
            {
               §§pop().scaleX = §=T§;
               addr138:
               while(true)
               {
                  §§push(this.§@!]§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§@!]§);
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  §§goto(addr43);
               }
               §§goto(addr108);
            }
            §§goto(addr92);
         }
         §§goto(addr88);
      }
   }
}
