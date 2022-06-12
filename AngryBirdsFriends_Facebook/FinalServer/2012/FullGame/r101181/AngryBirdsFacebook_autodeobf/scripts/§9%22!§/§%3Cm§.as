package §9"!§
{
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   
   public class §<m§
   {
       
      
      private var §#!5§:§0!N§;
      
      private var §]!a§:Number;
      
      public function §<m§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§#!5§ = new §0!N§(param1);
            while(_loc4_ || _loc3_)
            {
               this.§]!a§ = param2;
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function get image() : §0!N§
      {
         return this.§#!5§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§]!a§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§#!5§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr70:
                     this.§#!5§.dispose();
                  }
                  do
                  {
                     this.§#!5§ = null;
                  }
                  while(_loc1_);
                  
                  addr55:
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr55);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§]!a§);
            if(_loc3_ || this)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§]!a§ = §§pop();
         }
      }
      
      public function §<!?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]!a§ = param1;
         }
      }
      
      public function § !C§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#!5§.texture = param1;
         }
      }
   }
}
