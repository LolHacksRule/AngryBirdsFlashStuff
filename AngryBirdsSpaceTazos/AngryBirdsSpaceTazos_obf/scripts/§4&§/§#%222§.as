package §4&§
{
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   
   public class §#"2§ extends §else§
   {
       
      
      private var §7!T§:§,C§;
      
      private var §7!'§:String;
      
      public function §#"2§(param1:String, param2:§,C§, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super(param3);
            while(true)
            {
               this.§7!'§ = param1;
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     this.§7!T§ = param2;
                     if(!(_loc4_ && param2))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Sprite = param1 as Sprite;
         if(!(_loc4_ && this))
         {
            if(!_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  if(param1)
                  {
                     if(_loc3_ || this)
                     {
                        addr56:
                        param1.dispose();
                     }
                  }
               }
               §§goto(addr56);
            }
            return § j§.§#"+§(this.§7!'§,this.§7!T§,_loc2_);
         }
         §§goto(addr56);
      }
   }
}
