package §,§
{
   import §]!a§.Texture;
   import §^a§.§6p§;
   
   public class §]!,§
   {
       
      
      private var §#P§:§6p§;
      
      private var §>V§:Number;
      
      public function §]!,§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         while(true)
         {
            this.§#P§ = new §6p§(param1);
            while(_loc3_ || this)
            {
               this.§>V§ = param2;
               if(!_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      public function get image() : §6p§
      {
         return this.§#P§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§>V§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§#P§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§#P§);
                     addr65:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr66);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§>V§);
            if(_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§>V§ = §§pop();
         }
      }
      
      public function §,!h§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>V§ = param1;
         }
      }
      
      public function §#!0§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#P§.texture = param1;
         }
      }
   }
}
