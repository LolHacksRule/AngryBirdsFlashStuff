package §7!F§
{
   import §!!U§.DisplayObject;
   
   public class §%#D§ extends §>"G§
   {
       
      
      private var §#<§:Vector.<§>"G§>;
      
      private var §,"l§:§>"G§;
      
      public function §%#D§(param1:String, param2:§7#5§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§#<§ = new Vector.<§>"G§>();
            do
            {
               super(param1,param2);
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      public function §%#M§(param1:String, param2:§>"G§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(param2 != null)
            {
               loop0:
               do
               {
                  if(!this.§,"l§)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        this.§,"l§ = param2;
                     }
                     loop1:
                     while(!(_loc3_ && param2))
                     {
                        while(true)
                        {
                           this.§#<§.push(param2);
                           if(_loc4_ || param2)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr29);
               }
               while(_loc3_ && param1);
               
               return;
            }
         }
         addr94:
         throw new Error("Trying to add a null animation");
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§,"l§.addFrame(param1,param2);
         }
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§,"l§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§,"l§.getFrame(param1,param2);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§,"l§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§,"l§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§,"l§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §>"G§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>"G§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§#<§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc2_.name == param1)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return this.§,"l§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§,"l§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§>"G§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§#<§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && this)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      override public function get subAnimationCount() : int
      {
         return this.§#<§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §>"G§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           return this.§#<§[param1];
                        }
                        if(!_loc3_)
                        {
                           addr60:
                           break;
                        }
                        continue loop0;
                     }
                     return null;
                     addr49:
                  }
               }
               addr78:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr60);
      }
   }
}
