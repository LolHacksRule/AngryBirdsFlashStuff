package §!X§
{
   import §]!B§.Texture;
   import §]@§.§`!C§;
   
   public class §@X§
   {
       
      
      private var §#3§:§`!C§;
      
      private var §32§:Number;
      
      public function §@X§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super();
         }
         do
         {
            this.§#3§ = new §`!C§(param1);
            do
            {
               this.§32§ = param2;
            }
            while(!_loc4_);
            
         }
         while(!(_loc4_ || this));
         
      }
      
      public function get image() : §`!C§
      {
         return this.§#3§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§32§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§#3§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§#3§);
                     addr65:
                     addr47:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§#3§ = null;
                        }
                        while(_loc1_);
                        
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr35);
                  }
               }
               addr35:
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr47);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§32§);
            if(_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§32§ = §§pop();
         }
      }
      
      public function §57§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§32§ = param1;
         }
      }
      
      public function §0!§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#3§.texture = param1;
         }
      }
   }
}
